
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ds2782_info {int dummy; } ;


 int POWER_SUPPLY_STATUS_CHARGING ;
 int POWER_SUPPLY_STATUS_DISCHARGING ;
 int POWER_SUPPLY_STATUS_FULL ;
 int POWER_SUPPLY_STATUS_NOT_CHARGING ;
 int ds2782_get_capacity (struct ds2782_info*,int*) ;
 int ds2782_get_current (struct ds2782_info*,int*) ;

__attribute__((used)) static int ds2782_get_status(struct ds2782_info *info, int *status)
{
 int err;
 int current_uA;
 int capacity;

 err = ds2782_get_current(info, &current_uA);
 if (err)
  return err;

 err = ds2782_get_capacity(info, &capacity);
 if (err)
  return err;

 if (capacity == 100)
  *status = POWER_SUPPLY_STATUS_FULL;
 else if (current_uA == 0)
  *status = POWER_SUPPLY_STATUS_NOT_CHARGING;
 else if (current_uA < 0)
  *status = POWER_SUPPLY_STATUS_DISCHARGING;
 else
  *status = POWER_SUPPLY_STATUS_CHARGING;

 return 0;
}
