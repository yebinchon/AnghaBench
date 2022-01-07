
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct power_supply {int dummy; } ;
struct ds2760_device_info {int set_charged_work; int monitor_wqueue; } ;


 int HZ ;
 int cancel_delayed_work (int *) ;
 int queue_delayed_work (int ,int *,int) ;
 struct ds2760_device_info* to_ds2760_device_info (struct power_supply*) ;

__attribute__((used)) static void ds2760_battery_set_charged(struct power_supply *psy)
{
 struct ds2760_device_info *di = to_ds2760_device_info(psy);



 cancel_delayed_work(&di->set_charged_work);
 queue_delayed_work(di->monitor_wqueue, &di->set_charged_work, HZ * 20);
}
