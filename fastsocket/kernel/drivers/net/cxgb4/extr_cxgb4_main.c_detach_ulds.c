
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct adapter {int ** uld_handle; int list_node; } ;
struct TYPE_2__ {int (* state_change ) (int *,int ) ;} ;


 int CXGB4_STATE_DETACH ;
 unsigned int CXGB4_ULD_MAX ;
 int adapter_list ;
 int cxgb4_netevent_nb ;
 int list_del (int *) ;
 scalar_t__ list_empty (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int netevent_registered ;
 int stub1 (int *,int ) ;
 int uld_mutex ;
 TYPE_1__* ulds ;
 int unregister_netevent_notifier (int *) ;

__attribute__((used)) static void detach_ulds(struct adapter *adap)
{
 unsigned int i;

 mutex_lock(&uld_mutex);
 list_del(&adap->list_node);
 for (i = 0; i < CXGB4_ULD_MAX; i++)
  if (adap->uld_handle[i]) {
   ulds[i].state_change(adap->uld_handle[i],
          CXGB4_STATE_DETACH);
   adap->uld_handle[i] = ((void*)0);
  }
 if (netevent_registered && list_empty(&adapter_list)) {
  unregister_netevent_notifier(&cxgb4_netevent_nb);
  netevent_registered = 0;
 }
 mutex_unlock(&uld_mutex);
}
