
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {unsigned int* data; } ;
struct TYPE_4__ {int (* printdebug ) (TYPE_2__*,char*,int,int) ;} ;
struct TYPE_3__ {TYPE_2__ tei_m; scalar_t__ debug; } ;
struct PStack {TYPE_1__ ma; } ;
struct FsmInst {struct PStack* userdata; } ;


 int stub1 (TYPE_2__*,char*,int,int) ;

__attribute__((used)) static void
tei_id_denied(struct FsmInst *fi, int event, void *arg)
{
 struct PStack *st = fi->userdata;
 struct sk_buff *skb = arg;
 int ri, tei;

 ri = ((unsigned int) skb->data[1] << 8) + skb->data[2];
 tei = skb->data[4] >> 1;
 if (st->ma.debug)
  st->ma.tei_m.printdebug(&st->ma.tei_m,
   "identity denied ri %d tei %d", ri, tei);
}
