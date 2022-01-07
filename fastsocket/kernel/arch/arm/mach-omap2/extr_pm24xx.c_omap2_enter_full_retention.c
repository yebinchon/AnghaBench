
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct timespec {int dummy; } ;


 int CORE_MOD ;
 unsigned long long NSEC_PER_USEC ;
 int OCP_MOD ;
 int OMAP24XX_PM_WKST2 ;
 int OMAP24XX_USBSTANDBYCTRL ;
 int OMAP2_CONTROL_DEVCONF0 ;
 int OMAP2_PRCM_IRQSTATUS_MPU_OFFSET ;
 int OMAP_SDRC_REGADDR (int ) ;
 int PM_WKST ;
 int PM_WKST1 ;
 int PWRDM_POWER_RET ;
 int SDRC_DLLA_CTRL ;
 int SDRC_POWER ;
 int WKUP_MOD ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int getnstimeofday (struct timespec*) ;
 int mpu_pwrdm ;
 int omap2_gpio_prepare_for_retention () ;
 int omap2_gpio_resume_after_retention () ;
 scalar_t__ omap2_pm_debug ;
 int omap2_pm_dump (int ,int,unsigned long long) ;
 int omap2_sram_suspend (int ,int ,int ) ;
 int omap_ctrl_readl (int ) ;
 int omap_ctrl_writel (int,int ) ;
 scalar_t__ omap_irq_pending () ;
 int omap_uart_prepare_idle (int) ;
 int omap_uart_resume_idle (int) ;
 int osc_ck ;
 int prm_clear_mod_reg_bits (int,int ,int ) ;
 int prm_read_mod_reg (int ,int ) ;
 int prm_write_mod_reg (int,int ,int ) ;
 int pwrdm_set_logic_retst (int ,int ) ;
 int pwrdm_set_next_pwrst (int ,int ) ;
 int sdrc_read_reg (int ) ;
 struct timespec timespec_sub (struct timespec,struct timespec) ;
 unsigned long long timespec_to_ns (struct timespec*) ;

__attribute__((used)) static void omap2_enter_full_retention(void)
{
 u32 l;
 struct timespec ts_preidle, ts_postidle, ts_idle;






 clk_disable(osc_ck);



 prm_write_mod_reg(0xffffffff, CORE_MOD, PM_WKST1);
 prm_write_mod_reg(0xffffffff, CORE_MOD, OMAP24XX_PM_WKST2);
 prm_write_mod_reg(0xffffffff, WKUP_MOD, PM_WKST);





 pwrdm_set_logic_retst(mpu_pwrdm, PWRDM_POWER_RET);
 pwrdm_set_next_pwrst(mpu_pwrdm, PWRDM_POWER_RET);


 l = omap_ctrl_readl(OMAP2_CONTROL_DEVCONF0) | OMAP24XX_USBSTANDBYCTRL;
 omap_ctrl_writel(l, OMAP2_CONTROL_DEVCONF0);

 omap2_gpio_prepare_for_retention();

 if (omap2_pm_debug) {
  omap2_pm_dump(0, 0, 0);
  getnstimeofday(&ts_preidle);
 }



 if (omap_irq_pending())
  goto no_sleep;

 omap_uart_prepare_idle(0);
 omap_uart_prepare_idle(1);
 omap_uart_prepare_idle(2);


 omap2_sram_suspend(sdrc_read_reg(SDRC_DLLA_CTRL),
      OMAP_SDRC_REGADDR(SDRC_DLLA_CTRL),
      OMAP_SDRC_REGADDR(SDRC_POWER));

 omap_uart_resume_idle(2);
 omap_uart_resume_idle(1);
 omap_uart_resume_idle(0);

no_sleep:
 if (omap2_pm_debug) {
  unsigned long long tmp;

  getnstimeofday(&ts_postidle);
  ts_idle = timespec_sub(ts_postidle, ts_preidle);
  tmp = timespec_to_ns(&ts_idle) * NSEC_PER_USEC;
  omap2_pm_dump(0, 1, tmp);
 }
 omap2_gpio_resume_after_retention();

 clk_enable(osc_ck);


 prm_write_mod_reg(0xffffffff, CORE_MOD, PM_WKST1);
 prm_write_mod_reg(0xffffffff, CORE_MOD, OMAP24XX_PM_WKST2);


 prm_clear_mod_reg_bits(0x4 | 0x1, WKUP_MOD, PM_WKST);


 l = prm_read_mod_reg(OCP_MOD, OMAP2_PRCM_IRQSTATUS_MPU_OFFSET);
 if (l & 0x01)
  prm_write_mod_reg(0x01, OCP_MOD,
      OMAP2_PRCM_IRQSTATUS_MPU_OFFSET);
 if (l & 0x20)
  prm_write_mod_reg(0x20, OCP_MOD,
      OMAP2_PRCM_IRQSTATUS_MPU_OFFSET);


 prm_write_mod_reg(0x0, OCP_MOD, OMAP2_PRCM_IRQSTATUS_MPU_OFFSET);
}
