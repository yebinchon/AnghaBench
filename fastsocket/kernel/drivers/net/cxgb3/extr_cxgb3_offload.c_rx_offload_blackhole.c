
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t3cdev {int dummy; } ;
struct sk_buff {int dummy; } ;


 int dev_kfree_skb_any (struct sk_buff*) ;

__attribute__((used)) static int rx_offload_blackhole(struct t3cdev *dev, struct sk_buff **skbs,
    int n)
{
 while (n--)
  dev_kfree_skb_any(skbs[n]);
 return 0;
}
