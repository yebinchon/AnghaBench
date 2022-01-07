
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zfcp_erp_action {int status; TYPE_1__* fsf_req; struct zfcp_adapter* adapter; } ;
struct zfcp_adapter {int req_list_lock; } ;
struct TYPE_2__ {int status; struct zfcp_erp_action* erp_action; } ;


 int ZFCP_STATUS_ERP_DISMISSED ;
 int ZFCP_STATUS_ERP_TIMEDOUT ;
 int ZFCP_STATUS_FSFREQ_DISMISSED ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int zfcp_dbf_rec_action (char*,struct zfcp_erp_action*) ;
 scalar_t__ zfcp_reqlist_find_safe (struct zfcp_adapter*,TYPE_1__*) ;

__attribute__((used)) static void zfcp_erp_strategy_check_fsfreq(struct zfcp_erp_action *act)
{
 struct zfcp_adapter *adapter = act->adapter;

 if (!act->fsf_req)
  return;

 spin_lock(&adapter->req_list_lock);
 if (zfcp_reqlist_find_safe(adapter, act->fsf_req) &&
     act->fsf_req->erp_action == act) {
  if (act->status & (ZFCP_STATUS_ERP_DISMISSED |
       ZFCP_STATUS_ERP_TIMEDOUT)) {
   act->fsf_req->status |= ZFCP_STATUS_FSFREQ_DISMISSED;
   zfcp_dbf_rec_action("erscf_1", act);
   act->fsf_req->erp_action = ((void*)0);
  }
  if (act->status & ZFCP_STATUS_ERP_TIMEDOUT)
   zfcp_dbf_rec_action("erscf_2", act);
  if (act->fsf_req->status & ZFCP_STATUS_FSFREQ_DISMISSED)
   act->fsf_req = ((void*)0);
 } else
  act->fsf_req = ((void*)0);
 spin_unlock(&adapter->req_list_lock);
}
