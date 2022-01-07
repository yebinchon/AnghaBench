
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct irq_desc {int dummy; } ;


 int MXC_EXP_IO_BASE ;
 int PBC_INTMASK_SET_REG ;
 int PBC_INTSTATUS_REG ;
 int __raw_readw (int ) ;
 int generic_handle_irq (int) ;

__attribute__((used)) static void mx31ads_expio_irq_handler(u32 irq, struct irq_desc *desc)
{
 u32 imr_val;
 u32 int_valid;
 u32 expio_irq;

 imr_val = __raw_readw(PBC_INTMASK_SET_REG);
 int_valid = __raw_readw(PBC_INTSTATUS_REG) & imr_val;

 expio_irq = MXC_EXP_IO_BASE;
 for (; int_valid != 0; int_valid >>= 1, expio_irq++) {
  if ((int_valid & 1) == 0)
   continue;

  generic_handle_irq(expio_irq);
 }
}
