
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_unit {int dummy; } ;
struct zfcp_port {int dummy; } ;
struct zfcp_erp_action {int list; } ;
struct zfcp_adapter {int dbf; int erp_ready_wq; int erp_ready_head; int erp_total_count; int status; int erp_thread; } ;


 int EIO ;
 int ZFCP_STATUS_ADAPTER_ERP_PENDING ;
 int atomic_set_mask (int ,int *) ;
 int list_add_tail (int *,int *) ;
 int wake_up (int *) ;
 int zfcp_dbf_rec_thread (char*,int ) ;
 int zfcp_dbf_rec_trigger (char*,void*,int,int,struct zfcp_erp_action*,struct zfcp_adapter*,struct zfcp_port*,struct zfcp_unit*) ;
 int zfcp_erp_required_act (int,struct zfcp_adapter*,struct zfcp_port*,struct zfcp_unit*) ;
 struct zfcp_erp_action* zfcp_erp_setup_act (int,struct zfcp_adapter*,struct zfcp_port*,struct zfcp_unit*) ;

__attribute__((used)) static int zfcp_erp_action_enqueue(int want, struct zfcp_adapter *adapter,
       struct zfcp_port *port,
       struct zfcp_unit *unit, char *id, void *ref)
{
 int retval = 1, need;
 struct zfcp_erp_action *act = ((void*)0);

 if (!adapter->erp_thread)
  return -EIO;

 need = zfcp_erp_required_act(want, adapter, port, unit);
 if (!need)
  goto out;

 atomic_set_mask(ZFCP_STATUS_ADAPTER_ERP_PENDING, &adapter->status);
 act = zfcp_erp_setup_act(need, adapter, port, unit);
 if (!act)
  goto out;
 ++adapter->erp_total_count;
 list_add_tail(&act->list, &adapter->erp_ready_head);
 wake_up(&adapter->erp_ready_wq);
 zfcp_dbf_rec_thread("eracte1", adapter->dbf);
 retval = 0;
 out:
 zfcp_dbf_rec_trigger(id, ref, want, need, act, adapter, port, unit);
 return retval;
}
