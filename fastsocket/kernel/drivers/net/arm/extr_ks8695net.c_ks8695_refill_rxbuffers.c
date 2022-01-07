
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dev; int data; } ;
struct ks8695_priv {TYPE_2__* rx_ring; TYPE_1__* rx_buffers; int ndev; int dev; } ;
typedef void* dma_addr_t ;
struct TYPE_4__ {void* status; void* length; void* data_ptr; } ;
struct TYPE_3__ {void* length; void* dma_ptr; struct sk_buff* skb; } ;


 int DMA_FROM_DEVICE ;
 void* MAX_RXBUF_SIZE ;
 int MAX_RX_DESC ;
 void* RDES_OWN ;
 void* cpu_to_le32 (void*) ;
 struct sk_buff* dev_alloc_skb (void*) ;
 int dev_kfree_skb_irq (struct sk_buff*) ;
 void* dma_map_single (int ,int ,void*,int ) ;
 int dma_mapping_error (int ,void*) ;
 scalar_t__ unlikely (int ) ;
 int wmb () ;

__attribute__((used)) static void
ks8695_refill_rxbuffers(struct ks8695_priv *ksp)
{

 int buff_n;

 for (buff_n = 0; buff_n < MAX_RX_DESC; ++buff_n) {
  if (!ksp->rx_buffers[buff_n].skb) {
   struct sk_buff *skb = dev_alloc_skb(MAX_RXBUF_SIZE);
   dma_addr_t mapping;

   ksp->rx_buffers[buff_n].skb = skb;
   if (skb == ((void*)0)) {



    break;
   }

   mapping = dma_map_single(ksp->dev, skb->data,
       MAX_RXBUF_SIZE,
       DMA_FROM_DEVICE);
   if (unlikely(dma_mapping_error(ksp->dev, mapping))) {

    dev_kfree_skb_irq(skb);
    ksp->rx_buffers[buff_n].skb = ((void*)0);
    break;
   }
   ksp->rx_buffers[buff_n].dma_ptr = mapping;
   skb->dev = ksp->ndev;
   ksp->rx_buffers[buff_n].length = MAX_RXBUF_SIZE;


   ksp->rx_ring[buff_n].data_ptr = cpu_to_le32(mapping);
   ksp->rx_ring[buff_n].length =
    cpu_to_le32(MAX_RXBUF_SIZE);

   wmb();


   ksp->rx_ring[buff_n].status = cpu_to_le32(RDES_OWN);
  }
 }
}
