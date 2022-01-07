
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sk_buff {int len; } ;
struct net_device {int dummy; } ;
struct TYPE_8__ {TYPE_1__* buffer; } ;
struct TYPE_7__ {int pciDev; TYPE_3__* rxList; TYPE_3__* txList; } ;
struct TYPE_6__ {scalar_t__ address; } ;
typedef TYPE_2__ TLanPrivateInfo ;
typedef TYPE_3__ TLanList ;


 int PCI_DMA_FROMDEVICE ;
 int PCI_DMA_TODEVICE ;
 int TLAN_MAX_FRAME_SIZE ;
 scalar_t__ TLAN_MIN_FRAME_SIZE ;
 int TLAN_NUM_RX_LISTS ;
 int TLAN_NUM_TX_LISTS ;
 struct sk_buff* TLan_GetSKB (TYPE_3__*) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int max (int ,unsigned int) ;
 TYPE_2__* netdev_priv (struct net_device*) ;
 int pci_unmap_single (int ,scalar_t__,int ,int ) ;

__attribute__((used)) static void TLan_FreeLists( struct net_device *dev )
{
 TLanPrivateInfo *priv = netdev_priv(dev);
 int i;
 TLanList *list;
 struct sk_buff *skb;

 for ( i = 0; i < TLAN_NUM_TX_LISTS; i++ ) {
  list = priv->txList + i;
  skb = TLan_GetSKB(list);
  if ( skb ) {
   pci_unmap_single(
    priv->pciDev,
    list->buffer[0].address,
    max(skb->len,
        (unsigned int)TLAN_MIN_FRAME_SIZE),
    PCI_DMA_TODEVICE);
   dev_kfree_skb_any( skb );
   list->buffer[8].address = 0;
   list->buffer[9].address = 0;
  }
 }

 for ( i = 0; i < TLAN_NUM_RX_LISTS; i++ ) {
  list = priv->rxList + i;
  skb = TLan_GetSKB(list);
  if ( skb ) {
   pci_unmap_single(priv->pciDev,
      list->buffer[0].address,
      TLAN_MAX_FRAME_SIZE,
      PCI_DMA_FROMDEVICE);
   dev_kfree_skb_any( skb );
   list->buffer[8].address = 0;
   list->buffer[9].address = 0;
  }
 }
}
