
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t3cdev {int dummy; } ;
struct sk_buff {int cb; } ;
struct iwch_ep_common {int dummy; } ;


 int get_ep (struct iwch_ep_common*) ;
 int queue_work (int ,int *) ;
 int rxq ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int skb_work ;
 int workq ;

__attribute__((used)) static int sched(struct t3cdev *tdev, struct sk_buff *skb, void *ctx)
{
 struct iwch_ep_common *epc = ctx;

 get_ep(epc);




 *((void **) skb->cb) = ctx;
 *((struct t3cdev **) (skb->cb + sizeof(void *))) = tdev;




 skb_queue_tail(&rxq, skb);
 queue_work(workq, &skb_work);
 return 0;
}
