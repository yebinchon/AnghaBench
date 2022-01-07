
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int MIPS_BE_FIXUP ;
 int count_be_handler ;
 int count_be_is_fixup ;
 int ip28_be_interrupt (struct pt_regs*) ;
 int save_and_clear_buserr () ;

__attribute__((used)) static int ip28_be_handler(struct pt_regs *regs, int is_fixup)
{




 if (is_fixup) {
  count_be_is_fixup++;
  save_and_clear_buserr();
  return MIPS_BE_FIXUP;
 }
 count_be_handler++;
 return ip28_be_interrupt(regs);
}
