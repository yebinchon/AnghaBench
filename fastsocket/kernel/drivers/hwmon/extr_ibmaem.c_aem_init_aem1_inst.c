
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_9__ ;
typedef struct TYPE_13__ TYPE_8__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u8 ;
struct aem_ipmi_data {int interface; int bmc_device; } ;
struct TYPE_13__ {int user; int bmc_device; } ;
struct aem_data {int ver_major; int id; TYPE_1__* pdev; TYPE_8__ ipmi; int hwmon_dev; int module_handle; scalar_t__ ver_minor; int list; int update; int * power_period; int lock; } ;
struct TYPE_14__ {int driver; } ;
struct TYPE_12__ {int aem_devices; } ;
struct TYPE_11__ {int * driver; } ;
struct TYPE_10__ {TYPE_4__ dev; } ;


 int AEM1_NUM_ENERGY_REGS ;
 int AEM_DEFAULT_POWER_INTERVAL ;
 int DRVNAME ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 scalar_t__ aem1_find_sensors (struct aem_data*) ;
 TYPE_9__ aem_driver ;
 scalar_t__ aem_idr_get (int *) ;
 int aem_idr_put (int ) ;
 scalar_t__ aem_init_ipmi_data (TYPE_8__*,int ,int ) ;
 int dev_err (TYPE_4__*,char*,int ) ;
 int dev_info (int ,char*,int,scalar_t__,int ) ;
 int dev_set_drvdata (TYPE_4__*,struct aem_data*) ;
 TYPE_5__ driver_data ;
 int hwmon_device_register (TYPE_4__*) ;
 int hwmon_device_unregister (int ) ;
 int ipmi_destroy_user (int ) ;
 int kfree (struct aem_data*) ;
 struct aem_data* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_init (int *) ;
 int platform_device_add (TYPE_1__*) ;
 TYPE_1__* platform_device_alloc (int ,int ) ;
 int platform_device_unregister (TYPE_1__*) ;
 int update_aem1_sensors ;

__attribute__((used)) static int aem_init_aem1_inst(struct aem_ipmi_data *probe, u8 module_handle)
{
 struct aem_data *data;
 int i;
 int res = -ENOMEM;

 data = kzalloc(sizeof(*data), GFP_KERNEL);
 if (!data)
  return res;
 mutex_init(&data->lock);


 data->ver_major = 1;
 data->ver_minor = 0;
 data->module_handle = module_handle;
 for (i = 0; i < AEM1_NUM_ENERGY_REGS; i++)
  data->power_period[i] = AEM_DEFAULT_POWER_INTERVAL;


 if (aem_idr_get(&data->id))
  goto id_err;

 data->pdev = platform_device_alloc(DRVNAME, data->id);
 if (!data->pdev)
  goto dev_err;
 data->pdev->dev.driver = &aem_driver.driver;

 res = platform_device_add(data->pdev);
 if (res)
  goto ipmi_err;

 dev_set_drvdata(&data->pdev->dev, data);


 if (aem_init_ipmi_data(&data->ipmi, probe->interface,
          probe->bmc_device))
  goto ipmi_err;


 data->hwmon_dev = hwmon_device_register(&data->pdev->dev);

 if (IS_ERR(data->hwmon_dev)) {
  dev_err(&data->pdev->dev, "Unable to register hwmon "
   "device for IPMI interface %d\n",
   probe->interface);
  goto hwmon_reg_err;
 }

 data->update = update_aem1_sensors;


 if (aem1_find_sensors(data))
  goto sensor_err;


 list_add_tail(&data->list, &driver_data.aem_devices);

 dev_info(data->ipmi.bmc_device, "Found AEM v%d.%d at 0x%X\n",
   data->ver_major, data->ver_minor,
   data->module_handle);
 return 0;

sensor_err:
 hwmon_device_unregister(data->hwmon_dev);
hwmon_reg_err:
 ipmi_destroy_user(data->ipmi.user);
ipmi_err:
 dev_set_drvdata(&data->pdev->dev, ((void*)0));
 platform_device_unregister(data->pdev);
dev_err:
 aem_idr_put(data->id);
id_err:
 kfree(data);

 return res;
}
