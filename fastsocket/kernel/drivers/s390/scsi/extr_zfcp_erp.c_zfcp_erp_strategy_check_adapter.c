
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zfcp_adapter {int status; TYPE_1__* ccw_device; int erp_counter; } ;
struct TYPE_2__ {int dev; } ;


 int ZFCP_ERP_EXIT ;


 int ZFCP_MAX_ERPS ;
 int ZFCP_STATUS_COMMON_ERP_FAILED ;
 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 int dev_err (int *,char*) ;
 int zfcp_erp_adapter_block (struct zfcp_adapter*,int ) ;
 int zfcp_erp_adapter_failed (struct zfcp_adapter*,char*,int *) ;
 int zfcp_erp_adapter_unblock (struct zfcp_adapter*) ;

__attribute__((used)) static int zfcp_erp_strategy_check_adapter(struct zfcp_adapter *adapter,
        int result)
{
 switch (result) {
 case 128 :
  atomic_set(&adapter->erp_counter, 0);
  zfcp_erp_adapter_unblock(adapter);
  break;

 case 129 :
  atomic_inc(&adapter->erp_counter);
  if (atomic_read(&adapter->erp_counter) > ZFCP_MAX_ERPS) {
   dev_err(&adapter->ccw_device->dev,
    "ERP cannot recover an error "
    "on the FCP device\n");
   zfcp_erp_adapter_failed(adapter, "erasck1", ((void*)0));
  }
  break;
 }

 if (atomic_read(&adapter->status) & ZFCP_STATUS_COMMON_ERP_FAILED) {
  zfcp_erp_adapter_block(adapter, 0);
  result = ZFCP_ERP_EXIT;
 }
 return result;
}
