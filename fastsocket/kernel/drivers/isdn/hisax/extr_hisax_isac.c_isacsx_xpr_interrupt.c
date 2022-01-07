
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct isac {scalar_t__ tx_cnt; TYPE_1__* tx_skb; } ;
struct TYPE_2__ {scalar_t__ len; } ;


 int CONFIRM ;
 int D_L1L2 (struct isac*,int,int *) ;
 int PH_DATA ;
 int dev_kfree_skb_irq (TYPE_1__*) ;
 int isac_fill_fifo (struct isac*) ;

__attribute__((used)) static inline void isacsx_xpr_interrupt(struct isac *isac)
{
 if (!isac->tx_skb)
  return;

 if (isac->tx_skb->len > 0) {
  isac_fill_fifo(isac);
  return;
 }
 dev_kfree_skb_irq(isac->tx_skb);
 isac->tx_skb = ((void*)0);
 isac->tx_cnt = 0;
 D_L1L2(isac, PH_DATA | CONFIRM, ((void*)0));
}
