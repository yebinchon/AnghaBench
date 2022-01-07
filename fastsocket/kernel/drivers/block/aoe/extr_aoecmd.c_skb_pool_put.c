
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct aoedev {int skbpool; } ;


 int __skb_queue_tail (int *,struct sk_buff*) ;

__attribute__((used)) static void
skb_pool_put(struct aoedev *d, struct sk_buff *skb)
{
 __skb_queue_tail(&d->skbpool, skb);
}
