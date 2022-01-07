
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sk_buff {int dummy; } ;
struct l3_process {int dummy; } ;


 int dev_kfree_skb (struct sk_buff*) ;

__attribute__((used)) static void
l3_1tr6_info_s2(struct l3_process *pc, u_char pr, void *arg)
{
 struct sk_buff *skb = arg;

 dev_kfree_skb(skb);
}
