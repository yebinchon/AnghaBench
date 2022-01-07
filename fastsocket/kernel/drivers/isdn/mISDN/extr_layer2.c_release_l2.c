
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* st; } ;
struct layer2 {TYPE_3__ ch; int flag; int down_queue; int ui_queue; int i_queue; int t203; int t200; } ;
struct TYPE_8__ {int (* ctrl ) (TYPE_4__*,int ,int *) ;} ;
struct TYPE_6__ {TYPE_1__* dev; } ;
struct TYPE_5__ {TYPE_4__ D; } ;


 int CLOSE_CHANNEL ;
 int FLG_LAPD ;
 int ReleaseWin (struct layer2*) ;
 int TEIrelease (struct layer2*) ;
 int kfree (struct layer2*) ;
 int mISDN_FsmDelTimer (int *,int) ;
 int skb_queue_purge (int *) ;
 int stub1 (TYPE_4__*,int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void
release_l2(struct layer2 *l2)
{
 mISDN_FsmDelTimer(&l2->t200, 21);
 mISDN_FsmDelTimer(&l2->t203, 16);
 skb_queue_purge(&l2->i_queue);
 skb_queue_purge(&l2->ui_queue);
 skb_queue_purge(&l2->down_queue);
 ReleaseWin(l2);
 if (test_bit(FLG_LAPD, &l2->flag)) {
  TEIrelease(l2);
  if (l2->ch.st)
   l2->ch.st->dev->D.ctrl(&l2->ch.st->dev->D,
       CLOSE_CHANNEL, ((void*)0));
 }
 kfree(l2);
}
