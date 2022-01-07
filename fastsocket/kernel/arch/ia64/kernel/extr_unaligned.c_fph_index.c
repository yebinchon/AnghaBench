
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int cr_ifs; } ;


 scalar_t__ IA64_FIRST_ROTATING_FR ;
 unsigned long rotate_reg (int,unsigned long,scalar_t__) ;

__attribute__((used)) static inline unsigned long
fph_index (struct pt_regs *regs, long regnum)
{
 unsigned long rrb_fr = (regs->cr_ifs >> 25) & 0x7f;
 return rotate_reg(96, rrb_fr, (regnum - IA64_FIRST_ROTATING_FR));
}
