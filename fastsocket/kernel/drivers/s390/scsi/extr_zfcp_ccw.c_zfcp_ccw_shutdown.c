
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zfcp_adapter {int dummy; } ;
struct ccw_device {int dev; } ;
struct TYPE_2__ {int config_mutex; } ;


 struct zfcp_adapter* dev_get_drvdata (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__ zfcp_data ;
 int zfcp_erp_adapter_shutdown (struct zfcp_adapter*,int ,char*,int *) ;
 int zfcp_erp_thread_kill (struct zfcp_adapter*) ;
 int zfcp_erp_wait (struct zfcp_adapter*) ;

__attribute__((used)) static void zfcp_ccw_shutdown(struct ccw_device *cdev)
{
 struct zfcp_adapter *adapter;

 mutex_lock(&zfcp_data.config_mutex);
 adapter = dev_get_drvdata(&cdev->dev);
 if (!adapter)
  goto out;

 zfcp_erp_adapter_shutdown(adapter, 0, "ccshut1", ((void*)0));
 zfcp_erp_wait(adapter);
 zfcp_erp_thread_kill(adapter);
out:
 mutex_unlock(&zfcp_data.config_mutex);
}
