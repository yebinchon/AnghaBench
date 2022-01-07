
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct virtnet_info {TYPE_2__* dev; int svq; } ;
struct sk_buff {scalar_t__ len; } ;
struct TYPE_6__ {scalar_t__ num_sg; } ;
struct TYPE_4__ {int tx_packets; int tx_bytes; } ;
struct TYPE_5__ {TYPE_1__ stats; } ;


 int dev_kfree_skb_any (struct sk_buff*) ;
 int pr_debug (char*,struct sk_buff*) ;
 TYPE_3__* skb_vnet_hdr (struct sk_buff*) ;
 struct sk_buff* virtqueue_get_buf (int ,unsigned int*) ;

__attribute__((used)) static unsigned int free_old_xmit_skbs(struct virtnet_info *vi)
{
 struct sk_buff *skb;
 unsigned int len, tot_sgs = 0;

 while ((skb = virtqueue_get_buf(vi->svq, &len)) != ((void*)0)) {
  pr_debug("Sent skb %p\n", skb);
  vi->dev->stats.tx_bytes += skb->len;
  vi->dev->stats.tx_packets++;
  tot_sgs += skb_vnet_hdr(skb)->num_sg;
  dev_kfree_skb_any(skb);
 }
 return tot_sgs;
}
