
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct adapter {int list_node; } ;
struct TYPE_2__ {scalar_t__ add; } ;


 unsigned int CXGB4_ULD_MAX ;
 int adapter_list ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int uld_attach (struct adapter*,unsigned int) ;
 int uld_mutex ;
 TYPE_1__* ulds ;

__attribute__((used)) static void attach_ulds(struct adapter *adap)
{
 unsigned int i;

 mutex_lock(&uld_mutex);
 list_add_tail(&adap->list_node, &adapter_list);
 for (i = 0; i < CXGB4_ULD_MAX; i++)
  if (ulds[i].add)
   uld_attach(adap, i);
 mutex_unlock(&uld_mutex);
}
