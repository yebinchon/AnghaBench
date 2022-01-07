
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zfcp_adapter {int scan_work; scalar_t__ req_no; } ;
struct ccw_device {int dev; } ;
struct TYPE_2__ {int config_mutex; } ;


 int BUG_ON (int) ;
 int ZFCP_SET ;
 int ZFCP_STATUS_COMMON_ERP_FAILED ;
 int ZFCP_STATUS_COMMON_RUNNING ;
 int dev_err (int *,char*) ;
 struct zfcp_adapter* dev_get_drvdata (int *) ;
 int flush_work (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int zfcp_adapter_enqueue (struct ccw_device*) ;
 TYPE_1__ zfcp_data ;
 int zfcp_erp_adapter_reopen (struct zfcp_adapter*,int ,char*,int *) ;
 int zfcp_erp_modify_adapter_status (struct zfcp_adapter*,char*,int *,int ,int ) ;
 int zfcp_erp_wait (struct zfcp_adapter*) ;
 int zfcp_fc_inverse_conditional_port_scan (struct zfcp_adapter*) ;
 int zfcp_reqlist_isempty (struct zfcp_adapter*) ;

__attribute__((used)) static int zfcp_ccw_set_online(struct ccw_device *ccw_device)
{
 struct zfcp_adapter *adapter;
 int ret = 0;

 mutex_lock(&zfcp_data.config_mutex);
 adapter = dev_get_drvdata(&ccw_device->dev);

 if (!adapter) {
  ret = zfcp_adapter_enqueue(ccw_device);
  if (ret) {
   dev_err(&ccw_device->dev,
    "Setting up data structures for the "
    "FCP adapter failed\n");
   goto out;
  }
  adapter = dev_get_drvdata(&ccw_device->dev);
 }


 BUG_ON(!zfcp_reqlist_isempty(adapter));
 adapter->req_no = 0;

 zfcp_erp_modify_adapter_status(adapter, "ccsonl1", ((void*)0),
           ZFCP_STATUS_COMMON_RUNNING, ZFCP_SET);
 zfcp_erp_adapter_reopen(adapter, ZFCP_STATUS_COMMON_ERP_FAILED,
    "ccsonl2", ((void*)0));
 zfcp_erp_wait(adapter);



 zfcp_fc_inverse_conditional_port_scan(adapter);
out:
 mutex_unlock(&zfcp_data.config_mutex);
 if (!ret)
  flush_work(&adapter->scan_work);
 return ret;
}
