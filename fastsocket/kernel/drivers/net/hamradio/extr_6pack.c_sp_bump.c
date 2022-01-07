
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int protocol; } ;
struct sixpack {int rcount; TYPE_2__* dev; scalar_t__ cooked_buf; } ;
struct TYPE_3__ {int rx_bytes; int rx_dropped; int rx_packets; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;


 int ax25_type_trans (struct sk_buff*,TYPE_2__*) ;
 struct sk_buff* dev_alloc_skb (int) ;
 int memcpy (unsigned char*,scalar_t__,int) ;
 int netif_rx (struct sk_buff*) ;
 unsigned char* skb_put (struct sk_buff*,int) ;

__attribute__((used)) static void sp_bump(struct sixpack *sp, char cmd)
{
 struct sk_buff *skb;
 int count;
 unsigned char *ptr;

 count = sp->rcount + 1;

 sp->dev->stats.rx_bytes += count;

 if ((skb = dev_alloc_skb(count)) == ((void*)0))
  goto out_mem;

 ptr = skb_put(skb, count);
 *ptr++ = cmd;

 memcpy(ptr, sp->cooked_buf + 1, count);
 skb->protocol = ax25_type_trans(skb, sp->dev);
 netif_rx(skb);
 sp->dev->stats.rx_packets++;

 return;

out_mem:
 sp->dev->stats.rx_dropped++;
}
