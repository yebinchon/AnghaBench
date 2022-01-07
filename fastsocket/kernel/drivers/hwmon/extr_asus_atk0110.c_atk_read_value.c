
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct atk_sensor_data {int is_valid; int cached_value; scalar_t__ last_updated; TYPE_1__* data; } ;
struct TYPE_2__ {scalar_t__ old_interface; } ;


 scalar_t__ CACHE_TIME ;
 int atk_read_value_new (struct atk_sensor_data*,int *) ;
 int atk_read_value_old (struct atk_sensor_data*,int *) ;
 scalar_t__ jiffies ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;

__attribute__((used)) static int atk_read_value(struct atk_sensor_data *sensor, u64 *value)
{
 int err;

 if (!sensor->is_valid ||
     time_after(jiffies, sensor->last_updated + CACHE_TIME)) {
  if (sensor->data->old_interface)
   err = atk_read_value_old(sensor, value);
  else
   err = atk_read_value_new(sensor, value);

  sensor->is_valid = 1;
  sensor->last_updated = jiffies;
  sensor->cached_value = *value;
 } else {
  *value = sensor->cached_value;
  err = 0;
 }

 return err;
}
