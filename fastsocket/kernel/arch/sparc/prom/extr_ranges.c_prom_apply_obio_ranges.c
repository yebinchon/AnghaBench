
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct linux_prom_registers {int dummy; } ;


 scalar_t__ num_obio_ranges ;
 int prom_adjust_regs (struct linux_prom_registers*,int,int ,scalar_t__) ;
 int promlib_obio_ranges ;

void
prom_apply_obio_ranges(struct linux_prom_registers *regs, int nregs)
{
 if(num_obio_ranges)
  prom_adjust_regs(regs, nregs, promlib_obio_ranges, num_obio_ranges);
}
