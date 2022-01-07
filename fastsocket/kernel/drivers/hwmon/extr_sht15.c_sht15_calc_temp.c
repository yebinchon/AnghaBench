
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sht15_data {scalar_t__ supply_uV; int val_temp; } ;
struct TYPE_3__ {int d1; scalar_t__ vdd; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* temppoints ;

__attribute__((used)) static inline int sht15_calc_temp(struct sht15_data *data)
{
 int d1 = temppoints[0].d1;
 int i;

 for (i = ARRAY_SIZE(temppoints) - 1; i > 0; i--)

  if (data->supply_uV > temppoints[i - 1].vdd) {
   d1 = (data->supply_uV - temppoints[i - 1].vdd)
    * (temppoints[i].d1 - temppoints[i - 1].d1)
    / (temppoints[i].vdd - temppoints[i - 1].vdd)
    + temppoints[i - 1].d1;
   break;
  }

 return data->val_temp*10 + d1;
}
