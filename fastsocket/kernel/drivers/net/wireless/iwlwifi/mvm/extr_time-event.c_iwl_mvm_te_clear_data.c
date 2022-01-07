
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm_time_event_data {scalar_t__ id; int running; int * vif; scalar_t__ uid; int list; } ;
struct iwl_mvm {int time_event_lock; } ;


 scalar_t__ TE_MAX ;
 int list_del (int *) ;
 int lockdep_assert_held (int *) ;

void iwl_mvm_te_clear_data(struct iwl_mvm *mvm,
      struct iwl_mvm_time_event_data *te_data)
{
 lockdep_assert_held(&mvm->time_event_lock);

 if (te_data->id == TE_MAX)
  return;

 list_del(&te_data->list);
 te_data->running = 0;
 te_data->uid = 0;
 te_data->id = TE_MAX;
 te_data->vif = ((void*)0);
}
