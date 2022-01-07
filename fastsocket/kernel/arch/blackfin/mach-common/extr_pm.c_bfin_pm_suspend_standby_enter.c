
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ANOMALY_05000435 ;
 int CONFIG_PM_WAKEUP_GPIO_NUMBER ;
 int IWR_DISABLE_ALL ;
 int IWR_ENABLE (int) ;
 int WAKEUP_TYPE ;
 int bfin_pm_standby_restore () ;
 int bfin_pm_standby_setup () ;
 int * bfin_sic_iwr ;
 int bfin_write_SIC_IWR (int) ;
 int bfin_write_SIC_IWR0 (int) ;
 int bfin_write_SIC_IWR1 (int) ;
 int bfin_write_SIC_IWR2 (int) ;
 int gpio_pm_wakeup_request (int ,int ) ;
 int local_irq_restore_hw (unsigned long) ;
 int local_irq_save_hw (unsigned long) ;
 int sleep_deeper (int ,int ,int ) ;
 int sleep_mode (int ,int ,int ) ;

void bfin_pm_suspend_standby_enter(void)
{
 unsigned long flags;





 local_irq_save_hw(flags);
 bfin_pm_standby_setup();




 sleep_mode(bfin_sic_iwr[0], bfin_sic_iwr[1], bfin_sic_iwr[2]);


 bfin_pm_standby_restore();
 bfin_write_SIC_IWR(IWR_DISABLE_ALL);


 local_irq_restore_hw(flags);
}
