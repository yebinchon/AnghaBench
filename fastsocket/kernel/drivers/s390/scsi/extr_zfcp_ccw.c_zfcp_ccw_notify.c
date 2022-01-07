
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zfcp_adapter {TYPE_1__* ccw_device; int dbf; int status; } ;
struct ccw_device {int dev; } ;
struct TYPE_2__ {int dev; } ;






 int ZFCP_SET ;
 int ZFCP_STATUS_ADAPTER_SUSPENDED ;
 int ZFCP_STATUS_COMMON_ERP_FAILED ;
 int ZFCP_STATUS_COMMON_RUNNING ;
 int atomic_read (int *) ;
 struct zfcp_adapter* dev_get_drvdata (int *) ;
 int dev_info (int *,char*) ;
 int dev_warn (int *,char*) ;
 int zfcp_dbf_hba_base (int ,char*) ;
 int zfcp_erp_adapter_reopen (struct zfcp_adapter*,int ,char*,int *) ;
 int zfcp_erp_adapter_shutdown (struct zfcp_adapter*,int ,char*,int *) ;
 int zfcp_erp_modify_adapter_status (struct zfcp_adapter*,char*,int *,int ,int ) ;

__attribute__((used)) static int zfcp_ccw_notify(struct ccw_device *ccw_device, int event)
{
 struct zfcp_adapter *adapter = dev_get_drvdata(&ccw_device->dev);

 switch (event) {
 case 130:
  if (atomic_read(&adapter->status) &
      ZFCP_STATUS_ADAPTER_SUSPENDED) {
   zfcp_dbf_hba_base(adapter->dbf, "nigo");
   break;
  }
  dev_warn(&adapter->ccw_device->dev,
    "The FCP device has been detached\n");
  zfcp_erp_adapter_shutdown(adapter, 0, "ccnoti1", ((void*)0));
  break;
 case 129:
  dev_warn(&adapter->ccw_device->dev,
    "The CHPID for the FCP device is offline\n");
  zfcp_erp_adapter_shutdown(adapter, 0, "ccnoti2", ((void*)0));
  break;
 case 128:
  if (atomic_read(&adapter->status) &
      ZFCP_STATUS_ADAPTER_SUSPENDED) {
   zfcp_dbf_hba_base(adapter->dbf, "niop");
   break;
  }
  dev_info(&adapter->ccw_device->dev,
    "The FCP device is operational again\n");
  zfcp_erp_modify_adapter_status(adapter, "ccnoti3", ((void*)0),
            ZFCP_STATUS_COMMON_RUNNING,
            ZFCP_SET);
  zfcp_erp_adapter_reopen(adapter, ZFCP_STATUS_COMMON_ERP_FAILED,
     "ccnoti4", ((void*)0));
  break;
 case 131:
  dev_warn(&adapter->ccw_device->dev, "The FCP device "
    "did not respond within the specified time\n");
  zfcp_erp_adapter_shutdown(adapter, 0, "ccnoti5", ((void*)0));
  break;
 }
 return 1;
}
