
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tg3_napi {int prodring; TYPE_1__* rx_rcb; scalar_t__ rx_rcb_ptr; TYPE_1__* tx_ring; scalar_t__ tx_cons; scalar_t__ tx_prod; TYPE_1__* hw_status; scalar_t__ last_irq_tag; scalar_t__ last_tag; } ;
struct tg3 {int irq_cnt; struct tg3_napi* napi; } ;
struct TYPE_2__ {scalar_t__ status_tag; scalar_t__ status; } ;


 int ENOMEM ;
 int TG3_HW_STATUS_SIZE ;
 int TG3_RX_RCB_RING_BYTES (struct tg3*) ;
 int TG3_TX_RING_BYTES ;
 int memset (TYPE_1__*,int ,int ) ;
 int tg3_free_rings (struct tg3*) ;
 scalar_t__ tg3_rx_prodring_alloc (struct tg3*,int *) ;

__attribute__((used)) static int tg3_init_rings(struct tg3 *tp)
{
 int i;


 tg3_free_rings(tp);

 for (i = 0; i < tp->irq_cnt; i++) {
  struct tg3_napi *tnapi = &tp->napi[i];

  tnapi->last_tag = 0;
  tnapi->last_irq_tag = 0;
  tnapi->hw_status->status = 0;
  tnapi->hw_status->status_tag = 0;
  memset(tnapi->hw_status, 0, TG3_HW_STATUS_SIZE);

  tnapi->tx_prod = 0;
  tnapi->tx_cons = 0;
  if (tnapi->tx_ring)
   memset(tnapi->tx_ring, 0, TG3_TX_RING_BYTES);

  tnapi->rx_rcb_ptr = 0;
  if (tnapi->rx_rcb)
   memset(tnapi->rx_rcb, 0, TG3_RX_RCB_RING_BYTES(tp));

  if (tg3_rx_prodring_alloc(tp, &tnapi->prodring)) {
   tg3_free_rings(tp);
   return -ENOMEM;
  }
 }

 return 0;
}
