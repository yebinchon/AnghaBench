
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wm97xx_pdata {struct wm97xx_batt_pdata* batt_pdata; } ;
struct wm97xx_batt_pdata {unsigned long batt_mult; unsigned long batt_div; int batt_aux; } ;
struct power_supply {TYPE_1__* dev; } ;
struct TYPE_4__ {struct wm97xx_pdata* platform_data; } ;
struct TYPE_3__ {TYPE_2__* parent; } ;


 int dev_get_drvdata (TYPE_2__*) ;
 unsigned long wm97xx_read_aux_adc (int ,int ) ;

__attribute__((used)) static unsigned long wm97xx_read_bat(struct power_supply *bat_ps)
{
 struct wm97xx_pdata *wmdata = bat_ps->dev->parent->platform_data;
 struct wm97xx_batt_pdata *pdata = wmdata->batt_pdata;

 return wm97xx_read_aux_adc(dev_get_drvdata(bat_ps->dev->parent),
     pdata->batt_aux) * pdata->batt_mult /
     pdata->batt_div;
}
