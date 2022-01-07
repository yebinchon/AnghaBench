
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int data; } ;
struct TYPE_2__ {int parent; } ;
struct net_device {TYPE_1__ dev; } ;
struct bcom_task {int dummy; } ;
struct bcom_fec_bd {int skb_pa; int status; } ;


 int DMA_FROM_DEVICE ;
 int EAGAIN ;
 int FEC_RX_BUFFER_SIZE ;
 scalar_t__ bcom_prepare_next_buffer (struct bcom_task*) ;
 int bcom_queue_full (struct bcom_task*) ;
 int bcom_submit_next_buffer (struct bcom_task*,struct sk_buff*) ;
 struct sk_buff* dev_alloc_skb (int ) ;
 int dma_map_single (int ,int ,int ,int ) ;
 int memset (int ,int ,int ) ;

__attribute__((used)) static int mpc52xx_fec_alloc_rx_buffers(struct net_device *dev, struct bcom_task *rxtsk)
{
 while (!bcom_queue_full(rxtsk)) {
  struct sk_buff *skb;
  struct bcom_fec_bd *bd;

  skb = dev_alloc_skb(FEC_RX_BUFFER_SIZE);
  if (skb == ((void*)0))
   return -EAGAIN;


  memset(skb->data, 0, FEC_RX_BUFFER_SIZE);

  bd = (struct bcom_fec_bd *)bcom_prepare_next_buffer(rxtsk);

  bd->status = FEC_RX_BUFFER_SIZE;
  bd->skb_pa = dma_map_single(dev->dev.parent, skb->data,
    FEC_RX_BUFFER_SIZE, DMA_FROM_DEVICE);

  bcom_submit_next_buffer(rxtsk, skb);
 }

 return 0;
}
