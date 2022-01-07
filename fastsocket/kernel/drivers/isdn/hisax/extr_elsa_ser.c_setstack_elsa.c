
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_14__ {int mode; struct BCState* bcs; int hardware; int bc; } ;
struct TYPE_13__ {int l2l1; } ;
struct PStack {TYPE_7__ l1; TYPE_6__ l2; } ;
struct TYPE_8__ {int rcvidx; int rcvbuf; } ;
struct TYPE_9__ {TYPE_1__ hscx; } ;
struct BCState {int mode; struct PStack* st; TYPE_5__* cs; int tx_cnt; TYPE_2__ hw; int event; int Flag; int * tx_skb; int squeue; int rqueue; int channel; } ;
struct TYPE_10__ {struct BCState* bcs; int rcvbuf; } ;
struct TYPE_11__ {TYPE_3__ elsa; } ;
struct TYPE_12__ {TYPE_4__ hw; } ;


 int BC_FLG_BUSY ;
 int BC_FLG_INIT ;



 int hscx_l2l1 ;
 int modem_l2l1 ;
 int open_hscxstate (int ,struct BCState*) ;
 int setstack_l1_B (struct PStack*) ;
 int setstack_manager (struct PStack*) ;
 int skb_queue_head_init (int *) ;
 int test_and_clear_bit (int ,int *) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static int
setstack_elsa(struct PStack *st, struct BCState *bcs)
{

 bcs->channel = st->l1.bc;
 switch (st->l1.mode) {
  case 130:
  case 128:
   if (open_hscxstate(st->l1.hardware, bcs))
    return (-1);
   st->l2.l2l1 = hscx_l2l1;
   break;
  case 129:
   bcs->mode = 129;
   if (!test_and_set_bit(BC_FLG_INIT, &bcs->Flag)) {
    bcs->hw.hscx.rcvbuf = bcs->cs->hw.elsa.rcvbuf;
    skb_queue_head_init(&bcs->rqueue);
    skb_queue_head_init(&bcs->squeue);
   }
   bcs->tx_skb = ((void*)0);
   test_and_clear_bit(BC_FLG_BUSY, &bcs->Flag);
   bcs->event = 0;
   bcs->hw.hscx.rcvidx = 0;
   bcs->tx_cnt = 0;
   bcs->cs->hw.elsa.bcs = bcs;
   st->l2.l2l1 = modem_l2l1;
   break;
 }
 st->l1.bcs = bcs;
 setstack_manager(st);
 bcs->st = st;
 setstack_l1_B(st);
 return (0);
}
