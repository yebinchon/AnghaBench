
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ppp_net {int all_ppp_mutex; int units_idr; } ;
struct TYPE_2__ {int dead; int rwait; int index; } ;
struct ppp {int closing; TYPE_1__ file; int * owner; int dev; int ppp_net; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ppp_lock (struct ppp*) ;
 struct ppp_net* ppp_pernet (int ) ;
 int ppp_unlock (struct ppp*) ;
 int unit_put (int *,int ) ;
 int unregister_netdev (int ) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void ppp_shutdown_interface(struct ppp *ppp)
{
 struct ppp_net *pn;

 pn = ppp_pernet(ppp->ppp_net);
 mutex_lock(&pn->all_ppp_mutex);


 ppp_lock(ppp);
 if (!ppp->closing) {
  ppp->closing = 1;
  ppp_unlock(ppp);
  unregister_netdev(ppp->dev);
 } else
  ppp_unlock(ppp);

 unit_put(&pn->units_idr, ppp->file.index);
 ppp->file.dead = 1;
 ppp->owner = ((void*)0);
 wake_up_interruptible(&ppp->file.rwait);

 mutex_unlock(&pn->all_ppp_mutex);
}
