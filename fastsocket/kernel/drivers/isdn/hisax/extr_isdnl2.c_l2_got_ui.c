
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int (* l2l3 ) (struct PStack*,int,struct sk_buff*) ;} ;
struct PStack {TYPE_1__ l2; } ;
struct FsmInst {struct PStack* userdata; } ;


 int DL_UNIT_DATA ;
 int INDICATION ;
 int l2headersize (TYPE_1__*,int) ;
 int skb_pull (struct sk_buff*,int ) ;
 int stub1 (struct PStack*,int,struct sk_buff*) ;

__attribute__((used)) static void
l2_got_ui(struct FsmInst *fi, int event, void *arg)
{
 struct PStack *st = fi->userdata;
 struct sk_buff *skb = arg;

 skb_pull(skb, l2headersize(&st->l2, 1));
 st->l2.l2l3(st, DL_UNIT_DATA | INDICATION, skb);





}
