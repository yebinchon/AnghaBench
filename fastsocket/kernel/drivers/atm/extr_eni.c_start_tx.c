
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct eni_dev {TYPE_1__* tx; int tx_queue; int * ubr; int tx_wait; int tx_mult; int tx_bw; scalar_t__ lost; } ;
struct atm_dev {int dummy; } ;
struct TYPE_2__ {int index; int * send; } ;


 int ATM_OC3_PCR ;
 int DEFAULT_TX_MULT ;
 struct eni_dev* ENI_DEV (struct atm_dev*) ;
 int MID_DMA_WR_TX ;
 int NR_CHAN ;
 int eni_out (int ,int ) ;
 int init_waitqueue_head (int *) ;
 int skb_queue_head_init (int *) ;

__attribute__((used)) static int start_tx(struct atm_dev *dev)
{
 struct eni_dev *eni_dev;
 int i;

 eni_dev = ENI_DEV(dev);
 eni_dev->lost = 0;
 eni_dev->tx_bw = ATM_OC3_PCR;
 eni_dev->tx_mult = DEFAULT_TX_MULT;
 init_waitqueue_head(&eni_dev->tx_wait);
 eni_dev->ubr = ((void*)0);
 skb_queue_head_init(&eni_dev->tx_queue);
 eni_out(0,MID_DMA_WR_TX);
 for (i = 0; i < NR_CHAN; i++) {
  eni_dev->tx[i].send = ((void*)0);
  eni_dev->tx[i].index = i;
 }
 return 0;
}
