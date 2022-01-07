
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int do_bad_area (unsigned long,unsigned int,struct pt_regs*) ;

__attribute__((used)) static int
do_sect_fault(unsigned long addr, unsigned int fsr, struct pt_regs *regs)
{
 do_bad_area(addr, fsr, regs);
 return 0;
}
