
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int (* layer ) (struct PStack*,int,void*) ;} ;
struct PStack {TYPE_1__ ma; } ;
struct FsmInst {struct PStack* userdata; } ;


 int INDICATION ;
 int MDL_ERROR ;
 scalar_t__ get_PollFlagFree (struct PStack*,struct sk_buff*) ;
 int stub1 (struct PStack*,int,void*) ;
 int stub2 (struct PStack*,int,void*) ;

__attribute__((used)) static void
l2_mdl_error_ua(struct FsmInst *fi, int event, void *arg)
{
 struct sk_buff *skb = arg;
 struct PStack *st = fi->userdata;

 if (get_PollFlagFree(st, skb))
  st->ma.layer(st, MDL_ERROR | INDICATION, (void *) 'C');
 else
  st->ma.layer(st, MDL_ERROR | INDICATION, (void *) 'D');
}
