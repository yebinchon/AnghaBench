
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {unsigned int len; unsigned int tail; scalar_t__ data_len; int data; int dev; } ;
struct mlx4_en_rx_desc {TYPE_1__* data; } ;
struct mlx4_en_rx_alloc {int offset; int page; } ;
struct mlx4_en_priv {int ddev; int dev; } ;
typedef int dma_addr_t ;
struct TYPE_6__ {int nr_frags; TYPE_2__* frags; } ;
struct TYPE_5__ {int size; int page_offset; } ;
struct TYPE_4__ {int addr; } ;


 int DMA_FROM_DEVICE ;
 scalar_t__ HEADER_COPY_SIZE ;
 scalar_t__ NET_IP_ALIGN ;
 int RX_ERR ;
 unsigned int SMALL_PACKET_SIZE ;
 int be64_to_cpu (int ) ;
 struct sk_buff* dev_alloc_skb (scalar_t__) ;
 int dma_sync_single_for_cpu (int ,int ,unsigned int,int ) ;
 int en_dbg (int ,struct mlx4_en_priv*,char*) ;
 int kfree_skb (struct sk_buff*) ;
 int memcpy (int ,void*,scalar_t__) ;
 int mlx4_en_complete_rx_desc (struct mlx4_en_priv*,struct mlx4_en_rx_desc*,struct mlx4_en_rx_alloc*,struct sk_buff*,unsigned int) ;
 void* page_address (int ) ;
 int skb_copy_to_linear_data (struct sk_buff*,void*,unsigned int) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;
 TYPE_3__* skb_shinfo (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct sk_buff *mlx4_en_rx_skb(struct mlx4_en_priv *priv,
          struct mlx4_en_rx_desc *rx_desc,
          struct mlx4_en_rx_alloc *frags,
          unsigned int length)
{
 struct sk_buff *skb;
 void *va;
 int used_frags;
 dma_addr_t dma;

 skb = dev_alloc_skb(SMALL_PACKET_SIZE + NET_IP_ALIGN);
 if (!skb) {
  en_dbg(RX_ERR, priv, "Failed allocating skb\n");
  return ((void*)0);
 }
 skb->dev = priv->dev;
 skb_reserve(skb, NET_IP_ALIGN);
 skb->len = length;



 va = page_address(frags[0].page) + frags[0].offset;

 if (length <= SMALL_PACKET_SIZE) {


  dma = be64_to_cpu(rx_desc->data[0].addr);
  dma_sync_single_for_cpu(priv->ddev, dma, length,
     DMA_FROM_DEVICE);
  skb_copy_to_linear_data(skb, va, length);
  skb->tail += length;
 } else {

  used_frags = mlx4_en_complete_rx_desc(priv, rx_desc, frags,
       skb, length);
  if (unlikely(!used_frags)) {
   kfree_skb(skb);
   return ((void*)0);
  }
  skb_shinfo(skb)->nr_frags = used_frags;


  memcpy(skb->data, va, HEADER_COPY_SIZE);
  skb->tail += HEADER_COPY_SIZE;


  skb_shinfo(skb)->frags[0].page_offset += HEADER_COPY_SIZE;


  skb_shinfo(skb)->frags[0].size -= HEADER_COPY_SIZE;
  skb->data_len = length - HEADER_COPY_SIZE;
 }
 return skb;
}
