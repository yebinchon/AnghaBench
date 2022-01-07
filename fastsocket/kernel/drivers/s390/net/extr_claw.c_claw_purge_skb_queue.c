
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff_head {int dummy; } ;
struct sk_buff {int users; } ;


 int CLAW_DBF_TEXT (int,int ,char*) ;
 int atomic_dec (int *) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 struct sk_buff* skb_dequeue (struct sk_buff_head*) ;
 int trace ;

__attribute__((used)) static void
claw_purge_skb_queue(struct sk_buff_head *q)
{
        struct sk_buff *skb;

 CLAW_DBF_TEXT(4, trace, "purgque");
        while ((skb = skb_dequeue(q))) {
                atomic_dec(&skb->users);
                dev_kfree_skb_any(skb);
        }
}
