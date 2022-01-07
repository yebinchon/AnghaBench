
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_15__ {int l1l2; } ;
struct hisax_d_if {int ph_state; int erq; TYPE_7__ ifc; struct hisax_b_if** b_if; struct IsdnCardState* cs; int owner; } ;
struct TYPE_14__ {int l1l2; } ;
struct hisax_b_if {TYPE_6__ ifc; } ;
struct TYPE_9__ {struct hisax_d_if* hisax_d_if; } ;
struct IsdnCardState {TYPE_5__* bcs; TYPE_4__* channel; int tqueue; int cardmsg; TYPE_1__ hw; } ;
struct TYPE_16__ {int protocol; struct IsdnCardState* cs; scalar_t__ typ; } ;
struct TYPE_13__ {int BC_Close; int BC_SetStack; } ;
struct TYPE_12__ {TYPE_3__* d_st; } ;
struct TYPE_10__ {int l2l1; } ;
struct TYPE_11__ {TYPE_2__ l2; } ;


 int EBUSY ;
 int EINVAL ;
 int HISAX_MAX_CARDS ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ ISDN_CTYPE_DYNAMIC ;
 TYPE_8__* cards ;
 int checkcard (int,char*,int *,int ,int ) ;
 int clear_bit (int ,int *) ;
 int hisax_b_l1l2 ;
 int hisax_bc_close ;
 int hisax_bc_setstack ;
 int hisax_bh ;
 int hisax_cardmsg ;
 int hisax_d_l1l2 ;
 int hisax_d_l2l1 ;
 int hisax_setup_card_dynamic ;
 int nrcards ;
 int skb_queue_head_init (int *) ;
 int sprintf (char*,char*,char*,int) ;

int hisax_register(struct hisax_d_if *hisax_d_if, struct hisax_b_if *b_if[],
     char *name, int protocol)
{
 int i, retval;
 char id[20];
 struct IsdnCardState *cs;

 for (i = 0; i < HISAX_MAX_CARDS; i++) {
  if (!cards[i].typ)
   break;
 }

 if (i >= HISAX_MAX_CARDS)
  return -EBUSY;

 cards[i].typ = ISDN_CTYPE_DYNAMIC;
 cards[i].protocol = protocol;
 sprintf(id, "%s%d", name, i);
 nrcards++;
 retval = checkcard(i, id, ((void*)0), hisax_d_if->owner,
    hisax_setup_card_dynamic);
 if (retval == 0) {
  cards[i].typ = 0;
  nrcards--;
  return -EINVAL;
 }
 cs = cards[i].cs;
 hisax_d_if->cs = cs;
 cs->hw.hisax_d_if = hisax_d_if;
 cs->cardmsg = hisax_cardmsg;
 INIT_WORK(&cs->tqueue, hisax_bh);
 cs->channel[0].d_st->l2.l2l1 = hisax_d_l2l1;
 for (i = 0; i < 2; i++) {
  cs->bcs[i].BC_SetStack = hisax_bc_setstack;
  cs->bcs[i].BC_Close = hisax_bc_close;

  b_if[i]->ifc.l1l2 = hisax_b_l1l2;

  hisax_d_if->b_if[i] = b_if[i];
 }
 hisax_d_if->ifc.l1l2 = hisax_d_l1l2;
 skb_queue_head_init(&hisax_d_if->erq);
 clear_bit(0, &hisax_d_if->ph_state);

 return 0;
}
