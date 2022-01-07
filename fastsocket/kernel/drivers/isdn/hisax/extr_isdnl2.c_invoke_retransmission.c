
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_long ;
typedef size_t u_int ;
struct Layer2 {unsigned int vs; int va; size_t sow; size_t window; int lock; int (* l2l1 ) (struct PStack*,int,int *) ;TYPE_3__** windowar; int i_queue; int flag; } ;
struct TYPE_5__ {TYPE_1__* bcs; } ;
struct PStack {struct Layer2 l2; TYPE_2__ l1; } ;
struct TYPE_6__ {scalar_t__ len; } ;
struct TYPE_4__ {int tx_cnt; } ;


 int FLG_LAPB ;
 int FLG_MOD128 ;
 int PH_PULL ;
 int REQUEST ;
 scalar_t__ l2headersize (struct Layer2*,int ) ;
 int skb_queue_head (int *,TYPE_3__*) ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;
 int stub1 (struct PStack*,int,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void
invoke_retransmission(struct PStack *st, unsigned int nr)
{
 struct Layer2 *l2 = &st->l2;
 u_int p1;
 u_long flags;

 spin_lock_irqsave(&l2->lock, flags);
 if (l2->vs != nr) {
  while (l2->vs != nr) {
   (l2->vs)--;
   if(test_bit(FLG_MOD128, &l2->flag)) {
    l2->vs %= 128;
    p1 = (l2->vs - l2->va) % 128;
   } else {
    l2->vs %= 8;
    p1 = (l2->vs - l2->va) % 8;
   }
   p1 = (p1 + l2->sow) % l2->window;
   if (test_bit(FLG_LAPB, &l2->flag))
    st->l1.bcs->tx_cnt += l2->windowar[p1]->len + l2headersize(l2, 0);
   skb_queue_head(&l2->i_queue, l2->windowar[p1]);
   l2->windowar[p1] = ((void*)0);
  }
  spin_unlock_irqrestore(&l2->lock, flags);
  st->l2.l2l1(st, PH_PULL | REQUEST, ((void*)0));
  return;
 }
 spin_unlock_irqrestore(&l2->lock, flags);
}
