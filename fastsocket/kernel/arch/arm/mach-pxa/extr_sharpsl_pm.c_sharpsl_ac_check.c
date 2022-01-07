
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int dev; TYPE_1__* machinfo; } ;
struct TYPE_3__ {int (* read_devdata ) (int ) ;int charge_acin_high; int charge_acin_low; } ;


 int SHARPSL_ACIN_VOLT ;
 int SHARPSL_CHECK_BATTERY_WAIT_TIME_ACIN ;
 int dev_dbg (int ,char*,int) ;
 int dev_err (int ,char*) ;
 int get_select_val (int*) ;
 int mdelay (int ) ;
 TYPE_2__ sharpsl_pm ;
 int stub1 (int ) ;

__attribute__((used)) static int sharpsl_ac_check(void)
{
 int temp, i, buff[5];

 for (i=0; i<5; i++) {
  buff[i] = sharpsl_pm.machinfo->read_devdata(SHARPSL_ACIN_VOLT);
  mdelay(SHARPSL_CHECK_BATTERY_WAIT_TIME_ACIN);
 }

 temp = get_select_val(buff);
 dev_dbg(sharpsl_pm.dev, "AC Voltage: %d\n",temp);

 if ((temp > sharpsl_pm.machinfo->charge_acin_high) || (temp < sharpsl_pm.machinfo->charge_acin_low)) {
  dev_err(sharpsl_pm.dev, "Error: AC check failed.\n");
  return -1;
 }

 return 0;
}
