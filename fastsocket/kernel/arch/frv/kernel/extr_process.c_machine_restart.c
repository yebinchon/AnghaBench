
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PSR_IMPLE (int ) ;
 scalar_t__ PSR_IMPLE_FR551 ;
 int __get_PSR () ;
 int gdbstub_exit (int ) ;

void machine_restart(char * __unused)
{
 unsigned long reset_addr;




 if (PSR_IMPLE(__get_PSR()) == PSR_IMPLE_FR551)
  reset_addr = 0xfefff500;
 else
  reset_addr = 0xfeff0500;


 asm volatile("      dcef @(gr0,gr0),1 ! membar !"
       "      sti     %1,@(%0,0) !"
       "      nop ! nop ! nop ! nop ! nop ! "
       "      nop ! nop ! nop ! nop ! nop ! "
       "      nop ! nop ! nop ! nop ! nop ! "
       "      nop ! nop ! nop ! nop ! nop ! "
       : : "r" (reset_addr), "r" (1) );

 for (;;)
  ;
}
