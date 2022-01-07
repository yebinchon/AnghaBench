
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct sk_buff {int data; } ;
struct TYPE_4__ {int tx_window_errors; } ;
struct net_device {TYPE_2__ stats; int trans_start; struct airo_info* ml_priv; } ;
struct TYPE_3__ {int fid; struct sk_buff* skb; } ;
struct airo_info {int* fids; int sem; int flags; int jobs; TYPE_1__ xmit; } ;


 int FLAG_PENDING_XMIT ;
 int JOB_XMIT ;
 int MAX_FIDS ;
 scalar_t__ SUCCESS ;
 int clear_bit (int ,int *) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int jiffies ;
 int netif_wake_queue (struct net_device*) ;
 scalar_t__ transmit_802_3_packet (struct airo_info*,int,int ) ;
 int up (int *) ;

__attribute__((used)) static void airo_end_xmit(struct net_device *dev) {
 u16 status;
 int i;
 struct airo_info *priv = dev->ml_priv;
 struct sk_buff *skb = priv->xmit.skb;
 int fid = priv->xmit.fid;
 u32 *fids = priv->fids;

 clear_bit(JOB_XMIT, &priv->jobs);
 clear_bit(FLAG_PENDING_XMIT, &priv->flags);
 status = transmit_802_3_packet (priv, fids[fid], skb->data);
 up(&priv->sem);

 i = 0;
 if ( status == SUCCESS ) {
  dev->trans_start = jiffies;
  for (; i < MAX_FIDS / 2 && (priv->fids[i] & 0xffff0000); i++);
 } else {
  priv->fids[fid] &= 0xffff;
  dev->stats.tx_window_errors++;
 }
 if (i < MAX_FIDS / 2)
  netif_wake_queue(dev);
 dev_kfree_skb(skb);
}
