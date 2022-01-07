
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int hardware; } ;
struct PStack {TYPE_1__ l1; } ;


 int HiSax_putstatus (int ,char*,char*) ;
 int dev_kfree_skb (struct sk_buff*) ;

__attribute__((used)) static void
no_l3_proto(struct PStack *st, int pr, void *arg)
{
 struct sk_buff *skb = arg;

 HiSax_putstatus(st->l1.hardware, "L3", "no D protocol");
 if (skb) {
  dev_kfree_skb(skb);
 }
}
