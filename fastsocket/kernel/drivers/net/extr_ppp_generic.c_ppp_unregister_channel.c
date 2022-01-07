
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ppp_net {int all_channels_lock; } ;
struct ppp_channel {struct channel* ppp; } ;
struct TYPE_2__ {int dead; int refcnt; int rwait; } ;
struct channel {TYPE_1__ file; int list; int chan_net; int chan_sem; int downl; int * chan; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int down_write (int *) ;
 int list_del (int *) ;
 int ppp_destroy_channel (struct channel*) ;
 int ppp_disconnect_channel (struct channel*) ;
 struct ppp_net* ppp_pernet (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int up_write (int *) ;
 int wake_up_interruptible (int *) ;

void
ppp_unregister_channel(struct ppp_channel *chan)
{
 struct channel *pch = chan->ppp;
 struct ppp_net *pn;

 if (!pch)
  return;

 chan->ppp = ((void*)0);





 down_write(&pch->chan_sem);
 spin_lock_bh(&pch->downl);
 pch->chan = ((void*)0);
 spin_unlock_bh(&pch->downl);
 up_write(&pch->chan_sem);
 ppp_disconnect_channel(pch);

 pn = ppp_pernet(pch->chan_net);
 spin_lock_bh(&pn->all_channels_lock);
 list_del(&pch->list);
 spin_unlock_bh(&pn->all_channels_lock);

 pch->file.dead = 1;
 wake_up_interruptible(&pch->file.rwait);
 if (atomic_dec_and_test(&pch->file.refcnt))
  ppp_destroy_channel(pch);
}
