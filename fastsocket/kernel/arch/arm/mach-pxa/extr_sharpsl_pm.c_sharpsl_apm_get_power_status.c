
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct apm_power_info {int battery_status; int battery_flag; int battery_life; int ac_line_status; } ;
struct TYPE_3__ {int mainbat_status; int mainbat_percent; int ac_status; } ;
struct TYPE_4__ {scalar_t__ charge_mode; TYPE_1__ battstat; } ;


 int APM_BATTERY_STATUS_CHARGING ;
 scalar_t__ CHRG_ON ;
 TYPE_2__ sharpsl_pm ;

__attribute__((used)) static void sharpsl_apm_get_power_status(struct apm_power_info *info)
{
 info->ac_line_status = sharpsl_pm.battstat.ac_status;

 if (sharpsl_pm.charge_mode == CHRG_ON)
  info->battery_status = APM_BATTERY_STATUS_CHARGING;
 else
  info->battery_status = sharpsl_pm.battstat.mainbat_status;

 info->battery_flag = (1 << info->battery_status);
 info->battery_life = sharpsl_pm.battstat.mainbat_percent;
}
