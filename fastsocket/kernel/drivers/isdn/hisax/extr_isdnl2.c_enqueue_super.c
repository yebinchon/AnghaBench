
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {scalar_t__ len; } ;
struct TYPE_6__ {int (* l2l1 ) (struct PStack*,int,struct sk_buff*) ;int flag; } ;
struct TYPE_5__ {TYPE_1__* bcs; } ;
struct PStack {TYPE_3__ l2; TYPE_2__ l1; } ;
struct TYPE_4__ {int tx_cnt; } ;


 int FLG_LAPB ;
 int PH_DATA ;
 int REQUEST ;
 int stub1 (struct PStack*,int,struct sk_buff*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static inline void
enqueue_super(struct PStack *st,
       struct sk_buff *skb)
{
 if (test_bit(FLG_LAPB, &st->l2.flag))
  st->l1.bcs->tx_cnt += skb->len;
 st->l2.l2l1(st, PH_DATA | REQUEST, skb);
}
