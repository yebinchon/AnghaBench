
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int atomic_inc (int *) ;
 int cm_accel_dropped_pkts ;
 int dev_kfree_skb_any (struct sk_buff*) ;

__attribute__((used)) static void drop_packet(struct sk_buff *skb)
{
 atomic_inc(&cm_accel_dropped_pkts);
 dev_kfree_skb_any(skb);
}
