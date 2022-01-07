
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct ds2760_device_info {int bat; int monitor_wqueue; int set_charged_work; int monitor_work; } ;


 int cancel_rearming_delayed_workqueue (int ,int *) ;
 int destroy_workqueue (int ) ;
 struct ds2760_device_info* platform_get_drvdata (struct platform_device*) ;
 int power_supply_unregister (int *) ;

__attribute__((used)) static int ds2760_battery_remove(struct platform_device *pdev)
{
 struct ds2760_device_info *di = platform_get_drvdata(pdev);

 cancel_rearming_delayed_workqueue(di->monitor_wqueue,
       &di->monitor_work);
 cancel_rearming_delayed_workqueue(di->monitor_wqueue,
       &di->set_charged_work);
 destroy_workqueue(di->monitor_wqueue);
 power_supply_unregister(&di->bat);

 return 0;
}
