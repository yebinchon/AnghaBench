
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ibmpex_bmc_data {int num_sensors; struct ibmpex_bmc_data* sensors; int user; int hwmon_dev; int bmc_device; int list; TYPE_2__* attr; } ;
struct TYPE_6__ {struct ibmpex_bmc_data* name; } ;
struct TYPE_10__ {TYPE_1__ attr; } ;
struct TYPE_9__ {TYPE_5__ dev_attr; } ;
struct TYPE_8__ {TYPE_5__ dev_attr; } ;
struct TYPE_7__ {TYPE_5__ dev_attr; } ;


 int PEX_NUM_SENSOR_FUNCS ;
 int dev_set_drvdata (int ,int *) ;
 int device_remove_file (int ,TYPE_5__*) ;
 int hwmon_device_unregister (int ) ;
 int ipmi_destroy_user (int ) ;
 int kfree (struct ibmpex_bmc_data*) ;
 int list_del (int *) ;
 TYPE_4__ sensor_dev_attr_name ;
 TYPE_3__ sensor_dev_attr_reset_high_low ;

__attribute__((used)) static void ibmpex_bmc_delete(struct ibmpex_bmc_data *data)
{
 int i, j;

 device_remove_file(data->bmc_device,
      &sensor_dev_attr_reset_high_low.dev_attr);
 device_remove_file(data->bmc_device, &sensor_dev_attr_name.dev_attr);
 for (i = 0; i < data->num_sensors; i++)
  for (j = 0; j < PEX_NUM_SENSOR_FUNCS; j++) {
   if (!data->sensors[i].attr[j].dev_attr.attr.name)
    continue;
   device_remove_file(data->bmc_device,
    &data->sensors[i].attr[j].dev_attr);
   kfree(data->sensors[i].attr[j].dev_attr.attr.name);
  }

 list_del(&data->list);
 dev_set_drvdata(data->bmc_device, ((void*)0));
 hwmon_device_unregister(data->hwmon_dev);
 ipmi_destroy_user(data->user);
 kfree(data->sensors);
 kfree(data);
}
