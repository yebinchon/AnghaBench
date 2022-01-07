
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* dev; } ;
struct tosa_bat {scalar_t__ gpio_bat; scalar_t__ adc_bat; unsigned long adc_bat_divider; TYPE_3__ psy; } ;
struct TYPE_5__ {TYPE_1__* parent; } ;
struct TYPE_4__ {int driver_data; } ;


 int bat_lock ;
 int gpio_set_value (scalar_t__,int) ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 unsigned long wm97xx_read_aux_adc (int ,scalar_t__) ;

__attribute__((used)) static unsigned long tosa_read_bat(struct tosa_bat *bat)
{
 unsigned long value = 0;

 if (bat->gpio_bat < 0 || bat->adc_bat < 0)
  return 0;

 mutex_lock(&bat_lock);
 gpio_set_value(bat->gpio_bat, 1);
 msleep(5);
 value = wm97xx_read_aux_adc(bat->psy.dev->parent->driver_data,
   bat->adc_bat);
 gpio_set_value(bat->gpio_bat, 0);
 mutex_unlock(&bat_lock);

 value = value * 1000000 / bat->adc_bat_divider;

 return value;
}
