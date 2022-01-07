
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_8__ {scalar_t__ chan; } ;
typedef TYPE_2__ pc300dev_t ;
struct TYPE_7__ {int proto; } ;
struct TYPE_9__ {TYPE_1__ conf; scalar_t__ card; } ;
typedef TYPE_3__ pc300ch_t ;
typedef int pc300_t ;
struct TYPE_10__ {scalar_t__ priv; } ;


 int CPC_LOCK (int *,unsigned long) ;
 int CPC_UNLOCK (int *,unsigned long) ;
 int PC300_PROTO_MLPPP ;
 int cpc_closech (TYPE_2__*) ;
 int cpc_tty_unregister_service (TYPE_2__*) ;
 TYPE_4__* dev_to_hdlc (struct net_device*) ;
 int hdlc_close (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int printk (char*) ;

__attribute__((used)) static int cpc_close(struct net_device *dev)
{
 pc300dev_t *d = (pc300dev_t *) dev_to_hdlc(dev)->priv;
 pc300ch_t *chan = (pc300ch_t *) d->chan;
 pc300_t *card = (pc300_t *) chan->card;
 unsigned long flags;





 netif_stop_queue(dev);

 CPC_LOCK(card, flags);
 cpc_closech(d);
 CPC_UNLOCK(card, flags);

 hdlc_close(dev);
 return 0;
}
