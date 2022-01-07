
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zfcp_adapter {int dummy; } ;
struct ccw_device {int dev; } ;
struct TYPE_2__ {int config_mutex; } ;


 int ZFCP_SET ;
 int ZFCP_STATUS_ADAPTER_SUSPENDED ;
 struct zfcp_adapter* dev_get_drvdata (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__ zfcp_data ;
 int zfcp_erp_adapter_shutdown (struct zfcp_adapter*,int ,char*,int *) ;
 int zfcp_erp_modify_adapter_status (struct zfcp_adapter*,char*,int *,int ,int ) ;
 int zfcp_erp_wait (struct zfcp_adapter*) ;

__attribute__((used)) static int zfcp_ccw_suspend(struct ccw_device *cdev)

{
 struct zfcp_adapter *adapter = dev_get_drvdata(&cdev->dev);

 if (!adapter)
  return 0;

 mutex_lock(&zfcp_data.config_mutex);

 zfcp_erp_modify_adapter_status(adapter, "ccsusp2", ((void*)0),
           ZFCP_STATUS_ADAPTER_SUSPENDED, ZFCP_SET);
 zfcp_erp_adapter_shutdown(adapter, 0, "ccsusp1", ((void*)0));
 zfcp_erp_wait(adapter);

 mutex_unlock(&zfcp_data.config_mutex);

 return 0;
}
