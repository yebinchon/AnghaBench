
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct cmac {TYPE_1__* adapter; } ;
struct TYPE_2__ {scalar_t__ regs; } ;


 scalar_t__ A_PL_ENABLE ;
 int F_PL_INTR_EXT ;
 int SUNI1x10GEXP_REG_EFLX_FIFO_OVERFLOW_ERROR_ENABLE ;
 int SUNI1x10GEXP_REG_GLOBAL_INTERRUPT_ENABLE ;
 int SUNI1x10GEXP_REG_IFLX_FIFO_OVERFLOW_ENABLE ;
 int SUNI1x10GEXP_REG_MSTAT_INTERRUPT_MASK_0 ;
 int SUNI1x10GEXP_REG_MSTAT_INTERRUPT_MASK_1 ;
 int SUNI1x10GEXP_REG_MSTAT_INTERRUPT_MASK_2 ;
 int SUNI1x10GEXP_REG_MSTAT_INTERRUPT_MASK_3 ;
 int SUNI1x10GEXP_REG_PL4IDU_INTERRUPT_MASK ;
 int SUNI1x10GEXP_REG_PL4IO_LOCK_DETECT_MASK ;
 int SUNI1x10GEXP_REG_PL4ODP_INTERRUPT_MASK ;
 int SUNI1x10GEXP_REG_RXOAM_INTERRUPT_ENABLE ;
 int SUNI1x10GEXP_REG_RXXG_CONFIG_3 ;
 int SUNI1x10GEXP_REG_SERDES_3125_INTERRUPT_ENABLE ;
 int SUNI1x10GEXP_REG_TXOAM_INTERRUPT_ENABLE ;
 int SUNI1x10GEXP_REG_TXXG_CONFIG_3 ;
 int SUNI1x10GEXP_REG_XRF_DIAG_INTERRUPT_ENABLE ;
 int SUNI1x10GEXP_REG_XRF_INTERRUPT_ENABLE ;
 int SUNI1x10GEXP_REG_XTEF_INTERRUPT_ENABLE ;
 int pmwrite (struct cmac*,int ,int) ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int pm3393_interrupt_enable(struct cmac *cmac)
{
 u32 pl_intr;



 pmwrite(cmac, SUNI1x10GEXP_REG_SERDES_3125_INTERRUPT_ENABLE, 0xffff);
 pmwrite(cmac, SUNI1x10GEXP_REG_XRF_INTERRUPT_ENABLE, 0xffff);
 pmwrite(cmac, SUNI1x10GEXP_REG_XRF_DIAG_INTERRUPT_ENABLE, 0xffff);
 pmwrite(cmac, SUNI1x10GEXP_REG_RXOAM_INTERRUPT_ENABLE, 0xffff);


 pmwrite(cmac, SUNI1x10GEXP_REG_MSTAT_INTERRUPT_MASK_0, 0);
 pmwrite(cmac, SUNI1x10GEXP_REG_MSTAT_INTERRUPT_MASK_1, 0);
 pmwrite(cmac, SUNI1x10GEXP_REG_MSTAT_INTERRUPT_MASK_2, 0);
 pmwrite(cmac, SUNI1x10GEXP_REG_MSTAT_INTERRUPT_MASK_3, 0);

 pmwrite(cmac, SUNI1x10GEXP_REG_IFLX_FIFO_OVERFLOW_ENABLE, 0xffff);
 pmwrite(cmac, SUNI1x10GEXP_REG_PL4ODP_INTERRUPT_MASK, 0xffff);
 pmwrite(cmac, SUNI1x10GEXP_REG_XTEF_INTERRUPT_ENABLE, 0xffff);
 pmwrite(cmac, SUNI1x10GEXP_REG_TXOAM_INTERRUPT_ENABLE, 0xffff);
 pmwrite(cmac, SUNI1x10GEXP_REG_RXXG_CONFIG_3, 0xffff);
 pmwrite(cmac, SUNI1x10GEXP_REG_PL4IO_LOCK_DETECT_MASK, 0xffff);
 pmwrite(cmac, SUNI1x10GEXP_REG_TXXG_CONFIG_3, 0xffff);
 pmwrite(cmac, SUNI1x10GEXP_REG_PL4IDU_INTERRUPT_MASK, 0xffff);
 pmwrite(cmac, SUNI1x10GEXP_REG_EFLX_FIFO_OVERFLOW_ERROR_ENABLE, 0xffff);




 pmwrite(cmac, SUNI1x10GEXP_REG_GLOBAL_INTERRUPT_ENABLE,
  0 );


 pl_intr = readl(cmac->adapter->regs + A_PL_ENABLE);
 pl_intr |= F_PL_INTR_EXT;
 writel(pl_intr, cmac->adapter->regs + A_PL_ENABLE);
 return 0;
}
