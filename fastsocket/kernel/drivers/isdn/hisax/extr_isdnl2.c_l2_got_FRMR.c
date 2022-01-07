
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int* data; } ;
struct TYPE_4__ {int flag; } ;
struct TYPE_3__ {int (* layer ) (struct PStack*,int,void*) ;} ;
struct PStack {TYPE_2__ l2; TYPE_1__ ma; } ;
struct FsmInst {scalar_t__ state; struct PStack* userdata; } ;


 int FLG_L3_INIT ;
 int INDICATION ;
 scalar_t__ IsUA (int*) ;
 int MDL_ERROR ;
 scalar_t__ ST_L2_7 ;
 int dev_kfree_skb (struct sk_buff*) ;
 int establishlink (struct FsmInst*) ;
 scalar_t__ l2addrsize (TYPE_2__*) ;
 int skb_pull (struct sk_buff*,scalar_t__) ;
 int stub1 (struct PStack*,int,void*) ;
 int test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void
l2_got_FRMR(struct FsmInst *fi, int event, void *arg)
{
 struct PStack *st = fi->userdata;
 struct sk_buff *skb = arg;

 skb_pull(skb, l2addrsize(&st->l2) + 1);

 if (!(skb->data[0] & 1) || ((skb->data[0] & 3) == 1) ||
     (IsUA(skb->data) && (fi->state == ST_L2_7))) {
  st->ma.layer(st, MDL_ERROR | INDICATION, (void *) 'K');
  establishlink(fi);
  test_and_clear_bit(FLG_L3_INIT, &st->l2.flag);
 }
 dev_kfree_skb(skb);
}
