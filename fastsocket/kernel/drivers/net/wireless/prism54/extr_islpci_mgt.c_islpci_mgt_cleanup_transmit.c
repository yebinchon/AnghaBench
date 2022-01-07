
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct islpci_membuf {scalar_t__ size; int * mem; scalar_t__ pci_addr; } ;
struct TYPE_4__ {int index_mgmt_tx; int pdev; struct islpci_membuf* mgmt_tx; scalar_t__ control_block; } ;
typedef TYPE_1__ islpci_private ;
struct TYPE_5__ {int * device_curr_frag; } ;
typedef TYPE_2__ isl38xx_control_block ;


 int DEBUG (int ,char*) ;
 int ISL38XX_CB_MGMT_QSIZE ;
 size_t ISL38XX_CB_TX_MGMTQ ;
 int PCI_DMA_TODEVICE ;
 int SHOW_FUNCTION_CALLS ;
 int barrier () ;
 int kfree (int *) ;
 int le32_to_cpu (int ) ;
 TYPE_1__* netdev_priv (struct net_device*) ;
 int pci_unmap_single (int ,scalar_t__,scalar_t__,int ) ;

void
islpci_mgt_cleanup_transmit(struct net_device *ndev)
{
 islpci_private *priv = netdev_priv(ndev);
 isl38xx_control_block *cb =
     (isl38xx_control_block *) priv->control_block;
 u32 curr_frag;
 curr_frag = le32_to_cpu(cb->device_curr_frag[ISL38XX_CB_TX_MGMTQ]);
 barrier();

 for (; priv->index_mgmt_tx < curr_frag; priv->index_mgmt_tx++) {
  int index = priv->index_mgmt_tx % ISL38XX_CB_MGMT_QSIZE;
  struct islpci_membuf *buf = &priv->mgmt_tx[index];
  pci_unmap_single(priv->pdev, buf->pci_addr, buf->size,
     PCI_DMA_TODEVICE);
  buf->pci_addr = 0;
  kfree(buf->mem);
  buf->mem = ((void*)0);
  buf->size = 0;
 }
}
