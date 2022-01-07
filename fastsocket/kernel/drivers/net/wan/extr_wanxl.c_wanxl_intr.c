
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int irqreturn_t ;
struct TYPE_3__ {int n_ports; int * ports; scalar_t__ plx; } ;
typedef TYPE_1__ card_t ;


 int DOORBELL_FROM_CARD_CABLE_0 ;
 int DOORBELL_FROM_CARD_RX ;
 int DOORBELL_FROM_CARD_TX_0 ;
 int IRQ_RETVAL (int) ;
 scalar_t__ PLX_DOORBELL_FROM_CARD ;
 int readl (scalar_t__) ;
 int wanxl_cable_intr (int *) ;
 int wanxl_rx_intr (TYPE_1__*) ;
 int wanxl_tx_intr (int *) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t wanxl_intr(int irq, void* dev_id)
{
        card_t *card = dev_id;
        int i;
        u32 stat;
        int handled = 0;


        while((stat = readl(card->plx + PLX_DOORBELL_FROM_CARD)) != 0) {
                handled = 1;
  writel(stat, card->plx + PLX_DOORBELL_FROM_CARD);

                for (i = 0; i < card->n_ports; i++) {
   if (stat & (1 << (DOORBELL_FROM_CARD_TX_0 + i)))
    wanxl_tx_intr(&card->ports[i]);
   if (stat & (1 << (DOORBELL_FROM_CARD_CABLE_0 + i)))
    wanxl_cable_intr(&card->ports[i]);
  }
  if (stat & (1 << DOORBELL_FROM_CARD_RX))
   wanxl_rx_intr(card);
        }

        return IRQ_RETVAL(handled);
}
