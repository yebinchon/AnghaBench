
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int charge_mode; TYPE_1__* machinfo; int dev; } ;
struct TYPE_3__ {int (* charge ) (int ) ;} ;


 int CHRG_OFF ;
 int SHARPSL_LED_OFF ;
 int dev_dbg (int ,char*) ;
 int schedule_delayed_work (int *,int ) ;
 int sharpsl_bat ;
 TYPE_2__ sharpsl_pm ;
 int sharpsl_pm_led (int ) ;
 int stub1 (int ) ;

__attribute__((used)) static void sharpsl_charge_off(void)
{
 dev_dbg(sharpsl_pm.dev, "Turning Charger Off\n");

 sharpsl_pm.machinfo->charge(0);
 sharpsl_pm_led(SHARPSL_LED_OFF);
 sharpsl_pm.charge_mode = CHRG_OFF;

 schedule_delayed_work(&sharpsl_bat, 0);
}
