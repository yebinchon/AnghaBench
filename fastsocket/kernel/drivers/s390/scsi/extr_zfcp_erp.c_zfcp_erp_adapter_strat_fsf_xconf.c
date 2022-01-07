
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_erp_action {int status; struct zfcp_adapter* adapter; } ;
struct zfcp_adapter {int scsi_host; int status; int dbf; int erp_ready_head; int erp_ready_wq; int erp_lock; } ;


 scalar_t__ FC_PORTTYPE_PTP ;
 int ZFCP_ERP_FAILED ;
 int ZFCP_ERP_SUCCEEDED ;
 int ZFCP_STATUS_ADAPTER_HOST_CON_INIT ;
 int ZFCP_STATUS_ADAPTER_XCONFIG_OK ;
 int ZFCP_STATUS_ERP_TIMEDOUT ;
 int atomic_clear_mask (int,int *) ;
 int atomic_read (int *) ;
 scalar_t__ fc_host_port_type (int ) ;
 int list_empty (int *) ;
 int ssleep (int) ;
 int wait_event (int ,int) ;
 int write_lock_irq (int *) ;
 int write_unlock_irq (int *) ;
 int zfcp_dbf_rec_thread_lock (char*,int ) ;
 int zfcp_erp_action_to_running (struct zfcp_erp_action*) ;
 int zfcp_erp_enqueue_ptp_port (struct zfcp_adapter*) ;
 scalar_t__ zfcp_fsf_exchange_config_data (struct zfcp_erp_action*) ;

__attribute__((used)) static int zfcp_erp_adapter_strat_fsf_xconf(struct zfcp_erp_action *erp_action)
{
 int retries;
 int sleep = 1;
 struct zfcp_adapter *adapter = erp_action->adapter;

 atomic_clear_mask(ZFCP_STATUS_ADAPTER_XCONFIG_OK, &adapter->status);

 for (retries = 7; retries; retries--) {
  atomic_clear_mask(ZFCP_STATUS_ADAPTER_HOST_CON_INIT,
      &adapter->status);
  write_lock_irq(&adapter->erp_lock);
  zfcp_erp_action_to_running(erp_action);
  write_unlock_irq(&adapter->erp_lock);
  if (zfcp_fsf_exchange_config_data(erp_action)) {
   atomic_clear_mask(ZFCP_STATUS_ADAPTER_HOST_CON_INIT,
       &adapter->status);
   return ZFCP_ERP_FAILED;
  }

  zfcp_dbf_rec_thread_lock("erasfx1", adapter->dbf);
  wait_event(adapter->erp_ready_wq,
      !list_empty(&adapter->erp_ready_head));
  zfcp_dbf_rec_thread_lock("erasfx2", adapter->dbf);
  if (erp_action->status & ZFCP_STATUS_ERP_TIMEDOUT)
   break;

  if (!(atomic_read(&adapter->status) &
        ZFCP_STATUS_ADAPTER_HOST_CON_INIT))
   break;

  ssleep(sleep);
  sleep *= 2;
 }

 atomic_clear_mask(ZFCP_STATUS_ADAPTER_HOST_CON_INIT,
     &adapter->status);

 if (!(atomic_read(&adapter->status) & ZFCP_STATUS_ADAPTER_XCONFIG_OK))
  return ZFCP_ERP_FAILED;

 if (fc_host_port_type(adapter->scsi_host) == FC_PORTTYPE_PTP)
  zfcp_erp_enqueue_ptp_port(adapter);

 return ZFCP_ERP_SUCCEEDED;
}
