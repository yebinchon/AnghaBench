
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ipw2100_rx_packet {int skb; int dma_addr; } ;
struct TYPE_9__ {TYPE_1__* drv; } ;
struct TYPE_8__ {TYPE_2__* drv; } ;
struct ipw2100_priv {TYPE_4__ rx_queue; struct ipw2100_rx_packet* rx_buffers; int pci_dev; TYPE_3__ status_queue; } ;
struct TYPE_7__ {scalar_t__ status_fields; } ;
struct TYPE_6__ {int buf_length; int host_addr; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IPW_DEBUG_INFO (char*) ;
 int IPW_RX_NIC_BUFFER_LENGTH ;
 int PCI_DMA_FROMDEVICE ;
 int RX_QUEUE_LENGTH ;
 int bd_queue_allocate (struct ipw2100_priv*,TYPE_4__*,int) ;
 int bd_queue_free (struct ipw2100_priv*,TYPE_4__*) ;
 int dev_kfree_skb (int ) ;
 int ipw2100_alloc_skb (struct ipw2100_priv*,struct ipw2100_rx_packet*) ;
 int kfree (struct ipw2100_rx_packet*) ;
 struct ipw2100_rx_packet* kmalloc (int,int ) ;
 int pci_unmap_single (int ,int ,int,int ) ;
 int status_queue_allocate (struct ipw2100_priv*,int) ;
 int status_queue_free (struct ipw2100_priv*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ipw2100_rx_allocate(struct ipw2100_priv *priv)
{
 int i, j, err = -EINVAL;

 IPW_DEBUG_INFO("enter\n");

 err = bd_queue_allocate(priv, &priv->rx_queue, RX_QUEUE_LENGTH);
 if (err) {
  IPW_DEBUG_INFO("failed bd_queue_allocate\n");
  return err;
 }

 err = status_queue_allocate(priv, RX_QUEUE_LENGTH);
 if (err) {
  IPW_DEBUG_INFO("failed status_queue_allocate\n");
  bd_queue_free(priv, &priv->rx_queue);
  return err;
 }




 priv->rx_buffers = kmalloc(RX_QUEUE_LENGTH *
       sizeof(struct ipw2100_rx_packet),
       GFP_KERNEL);
 if (!priv->rx_buffers) {
  IPW_DEBUG_INFO("can't allocate rx packet buffer table\n");

  bd_queue_free(priv, &priv->rx_queue);

  status_queue_free(priv);

  return -ENOMEM;
 }

 for (i = 0; i < RX_QUEUE_LENGTH; i++) {
  struct ipw2100_rx_packet *packet = &priv->rx_buffers[i];

  err = ipw2100_alloc_skb(priv, packet);
  if (unlikely(err)) {
   err = -ENOMEM;
   break;
  }


  priv->rx_queue.drv[i].host_addr = packet->dma_addr;
  priv->rx_queue.drv[i].buf_length = IPW_RX_NIC_BUFFER_LENGTH;
  priv->status_queue.drv[i].status_fields = 0;
 }

 if (i == RX_QUEUE_LENGTH)
  return 0;

 for (j = 0; j < i; j++) {
  pci_unmap_single(priv->pci_dev, priv->rx_buffers[j].dma_addr,
     sizeof(struct ipw2100_rx_packet),
     PCI_DMA_FROMDEVICE);
  dev_kfree_skb(priv->rx_buffers[j].skb);
 }

 kfree(priv->rx_buffers);
 priv->rx_buffers = ((void*)0);

 bd_queue_free(priv, &priv->rx_queue);

 status_queue_free(priv);

 return err;
}
