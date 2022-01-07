
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int user; } ;
struct aem_data {int id; TYPE_2__* pdev; TYPE_1__ ipmi; int hwmon_dev; int list; } ;
struct TYPE_4__ {int dev; } ;


 int aem_idr_put (int ) ;
 int aem_remove_sensors (struct aem_data*) ;
 int dev_set_drvdata (int *,int *) ;
 int hwmon_device_unregister (int ) ;
 int ipmi_destroy_user (int ) ;
 int kfree (struct aem_data*) ;
 int list_del (int *) ;
 int platform_device_unregister (TYPE_2__*) ;

__attribute__((used)) static void aem_delete(struct aem_data *data)
{
 list_del(&data->list);
 aem_remove_sensors(data);
 hwmon_device_unregister(data->hwmon_dev);
 ipmi_destroy_user(data->ipmi.user);
 dev_set_drvdata(&data->pdev->dev, ((void*)0));
 platform_device_unregister(data->pdev);
 aem_idr_put(data->id);
 kfree(data);
}
