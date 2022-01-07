
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct bmc_device {int refcount; TYPE_3__* dev; } ;
typedef TYPE_4__* ipmi_smi_t ;
struct TYPE_9__ {struct bmc_device* bmc; int * my_dev_name; int * sysfs_name; TYPE_1__* si_dev; } ;
struct TYPE_7__ {int kobj; } ;
struct TYPE_8__ {TYPE_2__ dev; } ;
struct TYPE_6__ {int kobj; } ;


 int cleanup_bmc_device ;
 int ipmidriver_mutex ;
 int kfree (int *) ;
 int kref_put (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sysfs_remove_link (int *,int *) ;

__attribute__((used)) static void ipmi_bmc_unregister(ipmi_smi_t intf)
{
 struct bmc_device *bmc = intf->bmc;

 if (intf->sysfs_name) {
  sysfs_remove_link(&intf->si_dev->kobj, intf->sysfs_name);
  kfree(intf->sysfs_name);
  intf->sysfs_name = ((void*)0);
 }
 if (intf->my_dev_name) {
  sysfs_remove_link(&bmc->dev->dev.kobj, intf->my_dev_name);
  kfree(intf->my_dev_name);
  intf->my_dev_name = ((void*)0);
 }

 mutex_lock(&ipmidriver_mutex);
 kref_put(&bmc->refcount, cleanup_bmc_device);
 intf->bmc = ((void*)0);
 mutex_unlock(&ipmidriver_mutex);
}
