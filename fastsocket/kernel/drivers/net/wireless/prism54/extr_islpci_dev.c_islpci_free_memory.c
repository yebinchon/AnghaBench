
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct islpci_membuf {int * mem; scalar_t__ size; scalar_t__ pci_addr; } ;
struct TYPE_5__ {int acl; int ** data_low_rx; scalar_t__* pci_map_rx_address; int pdev; struct islpci_membuf* mgmt_rx; int * control_block; scalar_t__ device_psm_buffer; scalar_t__ device_host_address; int * driver_mem_address; int * device_base; } ;
typedef TYPE_1__ islpci_private ;


 int HOST_MEM_BLOCK ;
 int ISL38XX_CB_MGMT_QSIZE ;
 int ISL38XX_CB_RX_QSIZE ;
 scalar_t__ MAX_FRAGMENT_SIZE_RX ;
 int PCI_DMA_FROMDEVICE ;
 int dev_kfree_skb (int *) ;
 int iounmap (int *) ;
 int kfree (int *) ;
 int mgt_clean (TYPE_1__*) ;
 int pci_free_consistent (int ,int ,int *,scalar_t__) ;
 int pci_unmap_single (int ,scalar_t__,scalar_t__,int ) ;
 int prism54_acl_clean (int *) ;
 int prism54_wpa_bss_ie_clean (TYPE_1__*) ;

int
islpci_free_memory(islpci_private *priv)
{
 int counter;

 if (priv->device_base)
  iounmap(priv->device_base);
 priv->device_base = ((void*)0);


 if (priv->driver_mem_address)
  pci_free_consistent(priv->pdev, HOST_MEM_BLOCK,
        priv->driver_mem_address,
        priv->device_host_address);


 priv->driver_mem_address = ((void*)0);
 priv->device_host_address = 0;
 priv->device_psm_buffer = 0;
 priv->control_block = ((void*)0);


        for (counter = 0; counter < ISL38XX_CB_MGMT_QSIZE; counter++) {
  struct islpci_membuf *buf = &priv->mgmt_rx[counter];
  if (buf->pci_addr)
   pci_unmap_single(priv->pdev, buf->pci_addr,
      buf->size, PCI_DMA_FROMDEVICE);
  buf->pci_addr = 0;
  kfree(buf->mem);
  buf->size = 0;
  buf->mem = ((void*)0);
        }


 for (counter = 0; counter < ISL38XX_CB_RX_QSIZE; counter++) {
  if (priv->pci_map_rx_address[counter])
   pci_unmap_single(priv->pdev,
      priv->pci_map_rx_address[counter],
      MAX_FRAGMENT_SIZE_RX + 2,
      PCI_DMA_FROMDEVICE);
  priv->pci_map_rx_address[counter] = 0;

  if (priv->data_low_rx[counter])
   dev_kfree_skb(priv->data_low_rx[counter]);
  priv->data_low_rx[counter] = ((void*)0);
 }


 prism54_acl_clean(&priv->acl);
 prism54_wpa_bss_ie_clean(priv);
 mgt_clean(priv);

 return 0;
}
