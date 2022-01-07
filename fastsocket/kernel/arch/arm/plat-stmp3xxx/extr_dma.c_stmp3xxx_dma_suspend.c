
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BM_APBH_CTRL0_CLKGATE ;
 int BM_APBX_CTRL0_CLKGATE ;
 scalar_t__ HW_APBH_CTRL0 ;
 scalar_t__ HW_APBX_CTRL0 ;
 scalar_t__ REGS_APBH_BASE ;
 scalar_t__ REGS_APBX_BASE ;
 int stmp3xxx_setl (int ,scalar_t__) ;

void stmp3xxx_dma_suspend(void)
{
 stmp3xxx_setl(BM_APBH_CTRL0_CLKGATE, REGS_APBH_BASE + HW_APBH_CTRL0);
 stmp3xxx_setl(BM_APBX_CTRL0_CLKGATE, REGS_APBX_BASE + HW_APBX_CTRL0);
}
