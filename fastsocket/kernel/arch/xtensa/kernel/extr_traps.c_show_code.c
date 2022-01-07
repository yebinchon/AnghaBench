
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ __get_user (unsigned long,unsigned int*) ;
 int printk (char*,...) ;

void show_code(unsigned int *pc)
{
 long i;

 printk("\nCode:");

 for(i = -3 ; i < 6 ; i++) {
  unsigned long insn;
  if (__get_user(insn, pc + i)) {
   printk(" (Bad address in pc)\n");
   break;
  }
  printk("%c%08lx%c",(i?' ':'<'),insn,(i?' ':'>'));
 }
}
