
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_adapter {int status; } ;


 int EIO ;
 int ZFCP_ERP_ACTION_REOPEN_ADAPTER ;
 int ZFCP_STATUS_COMMON_ERP_FAILED ;
 int atomic_read (int *) ;
 int zfcp_erp_action_enqueue (int ,struct zfcp_adapter*,int *,int *,char*,void*) ;
 int zfcp_erp_adapter_block (struct zfcp_adapter*,int) ;
 int zfcp_erp_adapter_failed (struct zfcp_adapter*,char*,int *) ;
 int zfcp_scsi_schedule_rports_block (struct zfcp_adapter*) ;

__attribute__((used)) static int _zfcp_erp_adapter_reopen(struct zfcp_adapter *adapter,
        int clear_mask, char *id, void *ref)
{
 zfcp_erp_adapter_block(adapter, clear_mask);
 zfcp_scsi_schedule_rports_block(adapter);


 if (atomic_read(&adapter->status) & ZFCP_STATUS_COMMON_ERP_FAILED) {
  zfcp_erp_adapter_failed(adapter, "erareo1", ((void*)0));
  return -EIO;
 }
 return zfcp_erp_action_enqueue(ZFCP_ERP_ACTION_REOPEN_ADAPTER,
           adapter, ((void*)0), ((void*)0), id, ref);
}
