format PE64
entry start

include 'win64a.inc'

section '.code' code readable executable
start:
        invoke  ExitProcess, 0

section '.idata' import data readable writeable

library kernel, 'KERNEL32.DLL'
import kernel, ExitProcess, 'ExitProcess'