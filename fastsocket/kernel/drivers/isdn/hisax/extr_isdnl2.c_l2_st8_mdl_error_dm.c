
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_3__ {int flag; } ;
struct TYPE_4__ {int (* layer ) (struct PStack*,int,void*) ;} ;
struct PStack {TYPE_1__ l2; TYPE_2__ ma; } ;
struct FsmInst {struct PStack* userdata; } ;


 int FLG_L3_INIT ;
 int INDICATION ;
 int MDL_ERROR ;
 int establishlink (struct FsmInst*) ;
 scalar_t__ get_PollFlagFree (struct PStack*,struct sk_buff*) ;
 int stub1 (struct PStack*,int,void*) ;
 int stub2 (struct PStack*,int,void*) ;
 int test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void
l2_st8_mdl_error_dm(struct FsmInst *fi, int event, void *arg)
{
 struct sk_buff *skb = arg;
 struct PStack *st = fi->userdata;

 if (get_PollFlagFree(st, skb))
  st->ma.layer(st, MDL_ERROR | INDICATION, (void *) 'B');
 else {
  st->ma.layer(st, MDL_ERROR | INDICATION, (void *) 'E');
 }
 establishlink(fi);
 test_and_clear_bit(FLG_L3_INIT, &st->l2.flag);
}
