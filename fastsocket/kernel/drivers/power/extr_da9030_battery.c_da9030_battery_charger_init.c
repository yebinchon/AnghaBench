
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char vbat_low; char tbat_high; char tbat_restart; char tbat_low; } ;
struct da9030_charger {int master; TYPE_1__ thresholds; } ;


 int DA9030_ADC_AUTO_CONTROL ;
 int DA9030_ADC_AUTO_SLEEP_ENABLE ;
 int DA9030_ADC_ICH_ENABLE ;
 int DA9030_ADC_LDO_INT_ENABLE ;
 int DA9030_ADC_MAN_CONTROL ;
 int DA9030_ADC_TBATREF_ENABLE ;
 int DA9030_ADC_TBAT_ENABLE ;
 int DA9030_ADC_VBAT_ENABLE ;
 int DA9030_ADC_VBAT_IN_TXON ;
 int DA9030_ADC_VCH_ENABLE ;
 int DA9030_VBATMON ;
 int da903x_write (int ,int ,int) ;
 int da903x_writes (int ,int ,int,char*) ;

__attribute__((used)) static int da9030_battery_charger_init(struct da9030_charger *charger)
{
 char v[5];
 int ret;

 v[0] = v[1] = charger->thresholds.vbat_low;
 v[2] = charger->thresholds.tbat_high;
 v[3] = charger->thresholds.tbat_restart;
 v[4] = charger->thresholds.tbat_low;

 ret = da903x_writes(charger->master, DA9030_VBATMON, 5, v);
 if (ret)
  return ret;





 ret = da903x_write(charger->master, DA9030_ADC_MAN_CONTROL,
      DA9030_ADC_LDO_INT_ENABLE |
      DA9030_ADC_TBATREF_ENABLE);
 if (ret)
  return ret;


 return da903x_write(charger->master, DA9030_ADC_AUTO_CONTROL,
       DA9030_ADC_TBAT_ENABLE | DA9030_ADC_VBAT_IN_TXON |
       DA9030_ADC_VCH_ENABLE | DA9030_ADC_ICH_ENABLE |
       DA9030_ADC_VBAT_ENABLE |
       DA9030_ADC_AUTO_SLEEP_ENABLE);
}
