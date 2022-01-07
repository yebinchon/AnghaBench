
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int charge_mode; scalar_t__ full_count; int dev; } ;


 int CHRG_ON ;
 int dev_dbg (int ,char*) ;
 int msecs_to_jiffies (int) ;
 int schedule_delayed_work (int *,int ) ;
 int sharpsl_bat ;
 TYPE_1__ sharpsl_pm ;
 int toggle_charger ;

__attribute__((used)) static void sharpsl_charge_on(void)
{
 dev_dbg(sharpsl_pm.dev, "Turning Charger On\n");

 sharpsl_pm.full_count = 0;
 sharpsl_pm.charge_mode = CHRG_ON;
 schedule_delayed_work(&toggle_charger, msecs_to_jiffies(250));
 schedule_delayed_work(&sharpsl_bat, msecs_to_jiffies(500));
}
