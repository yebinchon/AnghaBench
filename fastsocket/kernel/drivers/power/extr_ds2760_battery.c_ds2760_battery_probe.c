
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_6__ {int external_power_changed; int set_charged; int get_property; int num_properties; int properties; int type; int name; } ;
struct ds2760_device_info {char* raw; TYPE_1__ bat; int monitor_work; int monitor_wqueue; int set_charged_work; TYPE_2__* dev; int charge_status; int w1_dev; } ;


 int ARRAY_SIZE (int ) ;
 char DS2760_STATUS_PMOD ;
 size_t DS2760_STATUS_REG ;
 int ENOMEM ;
 int ESRCH ;
 int GFP_KERNEL ;
 int HZ ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int POWER_SUPPLY_STATUS_UNKNOWN ;
 int POWER_SUPPLY_TYPE_BATTERY ;
 int create_singlethread_workqueue (int ) ;
 scalar_t__ current_accum ;
 int dev_err (TYPE_2__*,char*) ;
 int dev_name (TYPE_2__*) ;
 int ds2760_battery_external_power_changed ;
 int ds2760_battery_get_property ;
 int ds2760_battery_props ;
 int ds2760_battery_read_status (struct ds2760_device_info*) ;
 int ds2760_battery_set_charged ;
 int ds2760_battery_set_charged_work ;
 int ds2760_battery_set_current_accum (struct ds2760_device_info*,scalar_t__) ;
 int ds2760_battery_work ;
 int ds2760_battery_write_rated_capacity (struct ds2760_device_info*,scalar_t__) ;
 int ds2760_battery_write_status (struct ds2760_device_info*,char) ;
 int kfree (struct ds2760_device_info*) ;
 struct ds2760_device_info* kzalloc (int,int ) ;
 int platform_set_drvdata (struct platform_device*,struct ds2760_device_info*) ;
 scalar_t__ pmod_enabled ;
 int power_supply_register (TYPE_2__*,TYPE_1__*) ;
 int power_supply_unregister (TYPE_1__*) ;
 int queue_delayed_work (int ,int *,int) ;
 scalar_t__ rated_capacity ;

__attribute__((used)) static int ds2760_battery_probe(struct platform_device *pdev)
{
 char status;
 int retval = 0;
 struct ds2760_device_info *di;

 di = kzalloc(sizeof(*di), GFP_KERNEL);
 if (!di) {
  retval = -ENOMEM;
  goto di_alloc_failed;
 }

 platform_set_drvdata(pdev, di);

 di->dev = &pdev->dev;
 di->w1_dev = pdev->dev.parent;
 di->bat.name = dev_name(&pdev->dev);
 di->bat.type = POWER_SUPPLY_TYPE_BATTERY;
 di->bat.properties = ds2760_battery_props;
 di->bat.num_properties = ARRAY_SIZE(ds2760_battery_props);
 di->bat.get_property = ds2760_battery_get_property;
 di->bat.set_charged = ds2760_battery_set_charged;
 di->bat.external_power_changed =
      ds2760_battery_external_power_changed;

 di->charge_status = POWER_SUPPLY_STATUS_UNKNOWN;


 ds2760_battery_read_status(di);
 status = di->raw[DS2760_STATUS_REG];
 if (pmod_enabled)
  status |= DS2760_STATUS_PMOD;
 else
  status &= ~DS2760_STATUS_PMOD;

 ds2760_battery_write_status(di, status);


 if (rated_capacity)
  ds2760_battery_write_rated_capacity(di, rated_capacity);



 if (current_accum)
  ds2760_battery_set_current_accum(di, current_accum);

 retval = power_supply_register(&pdev->dev, &di->bat);
 if (retval) {
  dev_err(di->dev, "failed to register battery\n");
  goto batt_failed;
 }

 INIT_DELAYED_WORK(&di->monitor_work, ds2760_battery_work);
 INIT_DELAYED_WORK(&di->set_charged_work,
     ds2760_battery_set_charged_work);
 di->monitor_wqueue = create_singlethread_workqueue(dev_name(&pdev->dev));
 if (!di->monitor_wqueue) {
  retval = -ESRCH;
  goto workqueue_failed;
 }
 queue_delayed_work(di->monitor_wqueue, &di->monitor_work, HZ * 1);

 goto success;

workqueue_failed:
 power_supply_unregister(&di->bat);
batt_failed:
 kfree(di);
di_alloc_failed:
success:
 return retval;
}
