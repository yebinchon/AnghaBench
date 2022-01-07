
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ppp_net {int all_channels_lock; int new_channels; scalar_t__ last_channel_index; } ;
struct ppp_channel {int hdrlen; struct channel* ppp; } ;
struct net {int dummy; } ;
struct TYPE_2__ {scalar_t__ index; int hdrlen; } ;
struct channel {int lastseq; int list; TYPE_1__ file; int upl; int downl; int chan_sem; struct net* chan_net; struct ppp_channel* chan; int * ppp; } ;


 int CHANNEL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int atomic_inc (int *) ;
 int channel_count ;
 int init_ppp_file (TYPE_1__*,int ) ;
 int init_rwsem (int *) ;
 struct channel* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 struct ppp_net* ppp_pernet (struct net*) ;
 int rwlock_init (int *) ;
 int spin_lock_bh (int *) ;
 int spin_lock_init (int *) ;
 int spin_unlock_bh (int *) ;

int ppp_register_net_channel(struct net *net, struct ppp_channel *chan)
{
 struct channel *pch;
 struct ppp_net *pn;

 pch = kzalloc(sizeof(struct channel), GFP_KERNEL);
 if (!pch)
  return -ENOMEM;

 pn = ppp_pernet(net);

 pch->ppp = ((void*)0);
 pch->chan = chan;
 pch->chan_net = net;
 chan->ppp = pch;
 init_ppp_file(&pch->file, CHANNEL);
 pch->file.hdrlen = chan->hdrlen;



 init_rwsem(&pch->chan_sem);
 spin_lock_init(&pch->downl);
 rwlock_init(&pch->upl);

 spin_lock_bh(&pn->all_channels_lock);
 pch->file.index = ++pn->last_channel_index;
 list_add(&pch->list, &pn->new_channels);
 atomic_inc(&channel_count);
 spin_unlock_bh(&pn->all_channels_lock);

 return 0;
}
