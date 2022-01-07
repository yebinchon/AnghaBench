
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct IsdnCardState {TYPE_1__* tx_skb; } ;
struct TYPE_3__ {scalar_t__ len; } ;


 int HFCSX_SEL_D_TX ;
 int dev_kfree_skb_any (TYPE_1__*) ;
 scalar_t__ write_fifo (struct IsdnCardState*,TYPE_1__*,int ,int ) ;

__attribute__((used)) static void
hfcsx_fill_dfifo(struct IsdnCardState *cs)
{
 if (!cs->tx_skb)
  return;
 if (cs->tx_skb->len <= 0)
  return;

 if (write_fifo(cs, cs->tx_skb, HFCSX_SEL_D_TX, 0)) {
   dev_kfree_skb_any(cs->tx_skb);
   cs->tx_skb = ((void*)0);
 }
 return;
}
