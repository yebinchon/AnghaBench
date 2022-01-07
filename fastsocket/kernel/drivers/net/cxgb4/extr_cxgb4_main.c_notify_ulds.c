
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct adapter {scalar_t__* uld_handle; } ;
typedef enum cxgb4_state { ____Placeholder_cxgb4_state } cxgb4_state ;
struct TYPE_2__ {int (* state_change ) (scalar_t__,int) ;} ;


 unsigned int CXGB4_ULD_MAX ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (scalar_t__,int) ;
 int uld_mutex ;
 TYPE_1__* ulds ;

__attribute__((used)) static void notify_ulds(struct adapter *adap, enum cxgb4_state new_state)
{
 unsigned int i;

 mutex_lock(&uld_mutex);
 for (i = 0; i < CXGB4_ULD_MAX; i++)
  if (adap->uld_handle[i])
   ulds[i].state_change(adap->uld_handle[i], new_state);
 mutex_unlock(&uld_mutex);
}
