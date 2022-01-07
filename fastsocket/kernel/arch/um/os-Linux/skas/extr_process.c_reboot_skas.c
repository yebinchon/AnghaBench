
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INIT_JMP_REBOOT ;
 int UML_LONGJMP (int *,int ) ;
 int block_signals () ;
 int initial_jmpbuf ;

void reboot_skas(void)
{
 block_signals();
 UML_LONGJMP(&initial_jmpbuf, INIT_JMP_REBOOT);
}
