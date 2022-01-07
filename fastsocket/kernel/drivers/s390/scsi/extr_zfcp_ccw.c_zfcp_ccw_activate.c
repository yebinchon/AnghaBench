
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_adapter {int scan_work; } ;
struct ccw_device {int dev; } ;


 int ZFCP_CLEAR ;
 int ZFCP_SET ;
 int ZFCP_STATUS_COMMON_ERP_FAILED ;
 int ZFCP_STATUS_COMMON_RUNNING ;
 struct zfcp_adapter* dev_get_drvdata (int *) ;
 int flush_work (int *) ;
 int zfcp_erp_adapter_reopen (struct zfcp_adapter*,int ,char*,int *) ;
 int zfcp_erp_modify_adapter_status (struct zfcp_adapter*,char*,int *,int,int ) ;
 int zfcp_erp_wait (struct zfcp_adapter*) ;

__attribute__((used)) static int zfcp_ccw_activate(struct ccw_device *cdev, int clear, char *tag)
{
 struct zfcp_adapter *adapter = dev_get_drvdata(&cdev->dev);

 if (!adapter)
  return 0;

 zfcp_erp_modify_adapter_status(adapter, tag, ((void*)0), clear, ZFCP_CLEAR);
 zfcp_erp_modify_adapter_status(adapter, tag, ((void*)0),
           ZFCP_STATUS_COMMON_RUNNING, ZFCP_SET);
 zfcp_erp_adapter_reopen(adapter, ZFCP_STATUS_COMMON_ERP_FAILED,
    tag, ((void*)0));
 zfcp_erp_wait(adapter);
 flush_work(&adapter->scan_work);

 return 0;
}
