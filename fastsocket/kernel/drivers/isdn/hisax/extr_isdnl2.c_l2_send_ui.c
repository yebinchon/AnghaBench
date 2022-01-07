
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int ui_queue; } ;
struct PStack {TYPE_1__ l2; } ;
struct FsmInst {struct PStack* userdata; } ;


 int skb_queue_tail (int *,struct sk_buff*) ;
 int tx_ui (struct PStack*) ;

__attribute__((used)) static void
l2_send_ui(struct FsmInst *fi, int event, void *arg)
{
 struct PStack *st = fi->userdata;
 struct sk_buff *skb = arg;

 skb_queue_tail(&st->l2.ui_queue, skb);
 tx_ui(st);
}
