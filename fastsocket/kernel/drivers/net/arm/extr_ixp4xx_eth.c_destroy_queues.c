
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct port {int * desc_tab; int desc_tab_phys; int ** tx_buff_tab; TYPE_1__* netdev; int ** rx_buff_tab; } ;
struct desc {scalar_t__ data; } ;
typedef int buffer_t ;
struct TYPE_2__ {int dev; } ;


 int DMA_FROM_DEVICE ;
 scalar_t__ NET_IP_ALIGN ;
 int RX_BUFF_SIZE ;
 int RX_DESCS ;
 int TX_DESCS ;
 int * dma_pool ;
 int dma_pool_destroy (int *) ;
 int dma_pool_free (int *,int *,int ) ;
 int dma_unmap_single (int *,scalar_t__,int ,int ) ;
 int dma_unmap_tx (struct port*,struct desc*) ;
 int free_buffer (int *) ;
 int ports_open ;
 struct desc* rx_desc_ptr (struct port*,int) ;
 struct desc* tx_desc_ptr (struct port*,int) ;

__attribute__((used)) static void destroy_queues(struct port *port)
{
 int i;

 if (port->desc_tab) {
  for (i = 0; i < RX_DESCS; i++) {
   struct desc *desc = rx_desc_ptr(port, i);
   buffer_t *buff = port->rx_buff_tab[i];
   if (buff) {
    dma_unmap_single(&port->netdev->dev,
       desc->data - NET_IP_ALIGN,
       RX_BUFF_SIZE, DMA_FROM_DEVICE);
    free_buffer(buff);
   }
  }
  for (i = 0; i < TX_DESCS; i++) {
   struct desc *desc = tx_desc_ptr(port, i);
   buffer_t *buff = port->tx_buff_tab[i];
   if (buff) {
    dma_unmap_tx(port, desc);
    free_buffer(buff);
   }
  }
  dma_pool_free(dma_pool, port->desc_tab, port->desc_tab_phys);
  port->desc_tab = ((void*)0);
 }

 if (!ports_open && dma_pool) {
  dma_pool_destroy(dma_pool);
  dma_pool = ((void*)0);
 }
}
