
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_rx_edma {int rx_fifo_hwsize; int rx_fifo; } ;


 int skb_queue_head_init (int *) ;

__attribute__((used)) static void ath_rx_edma_init_queue(struct ath_rx_edma *rx_edma, int size)
{
 skb_queue_head_init(&rx_edma->rx_fifo);
 rx_edma->rx_fifo_hwsize = size;
}
