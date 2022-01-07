
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tx4939rtc_plat_data {TYPE_1__* rtc; int rtcreg; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int irq_lock; } ;


 int TX4939_RTCCTL_ALME ;
 int TX4939_RTCCTL_COMMAND_NOP ;
 struct tx4939rtc_plat_data* get_tx4939rtc_plat_data (struct device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int tx4939_rtc_cmd (int ,int) ;

__attribute__((used)) static int tx4939_rtc_alarm_irq_enable(struct device *dev, unsigned int enabled)
{
 struct tx4939rtc_plat_data *pdata = get_tx4939rtc_plat_data(dev);

 spin_lock_irq(&pdata->rtc->irq_lock);
 tx4939_rtc_cmd(pdata->rtcreg,
         TX4939_RTCCTL_COMMAND_NOP |
         (enabled ? TX4939_RTCCTL_ALME : 0));
 spin_unlock_irq(&pdata->rtc->irq_lock);
 return 0;
}
