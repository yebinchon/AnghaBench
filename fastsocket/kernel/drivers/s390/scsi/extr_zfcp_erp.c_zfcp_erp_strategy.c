
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zfcp_erp_action {int status; struct zfcp_adapter* adapter; } ;
struct zfcp_adapter {int erp_lock; int erp_low_mem_count; int erp_total_count; } ;
struct TYPE_2__ {int config_lock; } ;



 int ZFCP_ERP_DISMISSED ;
 int ZFCP_ERP_EXIT ;
 int ZFCP_ERP_FAILED ;

 int ZFCP_ERP_SUCCEEDED ;
 int ZFCP_STATUS_ERP_DISMISSED ;
 int ZFCP_STATUS_ERP_LOWMEM ;
 int ZFCP_STATUS_ERP_TIMEDOUT ;
 int _zfcp_erp_adapter_reopen (struct zfcp_adapter*,int ,char*,int *) ;
 int read_lock_irqsave (int *,unsigned long) ;
 int read_unlock_irqrestore (int *,unsigned long) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;
 TYPE_1__ zfcp_data ;
 int zfcp_erp_action_cleanup (struct zfcp_erp_action*,int) ;
 int zfcp_erp_action_dequeue (struct zfcp_erp_action*) ;
 int zfcp_erp_action_to_running (struct zfcp_erp_action*) ;
 int zfcp_erp_strategy_check_fsfreq (struct zfcp_erp_action*) ;
 int zfcp_erp_strategy_check_target (struct zfcp_erp_action*,int) ;
 int zfcp_erp_strategy_do_action (struct zfcp_erp_action*) ;
 int zfcp_erp_strategy_followup_failed (struct zfcp_erp_action*) ;
 int zfcp_erp_strategy_followup_success (struct zfcp_erp_action*) ;
 int zfcp_erp_strategy_memwait (struct zfcp_erp_action*) ;
 int zfcp_erp_strategy_statechange (struct zfcp_erp_action*,int) ;

__attribute__((used)) static int zfcp_erp_strategy(struct zfcp_erp_action *erp_action)
{
 int retval;
 struct zfcp_adapter *adapter = erp_action->adapter;
 unsigned long flags;

 read_lock_irqsave(&zfcp_data.config_lock, flags);
 write_lock(&adapter->erp_lock);

 zfcp_erp_strategy_check_fsfreq(erp_action);

 if (erp_action->status & ZFCP_STATUS_ERP_DISMISSED) {
  zfcp_erp_action_dequeue(erp_action);
  retval = ZFCP_ERP_DISMISSED;
  goto unlock;
 }

 if (erp_action->status & ZFCP_STATUS_ERP_TIMEDOUT) {
  retval = ZFCP_ERP_FAILED;
  goto check_target;
 }

 zfcp_erp_action_to_running(erp_action);


 write_unlock(&adapter->erp_lock);
 read_unlock_irqrestore(&zfcp_data.config_lock, flags);
 retval = zfcp_erp_strategy_do_action(erp_action);
 read_lock_irqsave(&zfcp_data.config_lock, flags);
 write_lock(&adapter->erp_lock);

 if (erp_action->status & ZFCP_STATUS_ERP_DISMISSED)
  retval = 129;

 switch (retval) {
 case 128:
  if (!(erp_action->status & ZFCP_STATUS_ERP_LOWMEM)) {
   ++adapter->erp_low_mem_count;
   erp_action->status |= ZFCP_STATUS_ERP_LOWMEM;
  }
  if (adapter->erp_total_count == adapter->erp_low_mem_count)
   _zfcp_erp_adapter_reopen(adapter, 0, "erstgy1", ((void*)0));
  else {
   zfcp_erp_strategy_memwait(erp_action);
   retval = 129;
  }
  goto unlock;

 case 129:
  if (erp_action->status & ZFCP_STATUS_ERP_LOWMEM) {
   --adapter->erp_low_mem_count;
   erp_action->status &= ~ZFCP_STATUS_ERP_LOWMEM;
  }
  goto unlock;
 }

check_target:
 retval = zfcp_erp_strategy_check_target(erp_action, retval);
 zfcp_erp_action_dequeue(erp_action);
 retval = zfcp_erp_strategy_statechange(erp_action, retval);
 if (retval == ZFCP_ERP_EXIT)
  goto unlock;
 if (retval == ZFCP_ERP_SUCCEEDED)
  zfcp_erp_strategy_followup_success(erp_action);
 if (retval == ZFCP_ERP_FAILED)
  zfcp_erp_strategy_followup_failed(erp_action);

 unlock:
 write_unlock(&adapter->erp_lock);
 read_unlock_irqrestore(&zfcp_data.config_lock, flags);

 if (retval != 129)
  zfcp_erp_action_cleanup(erp_action, retval);

 return retval;
}
