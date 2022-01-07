
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int flags; int mc_count; } ;
struct de_private {unsigned int tx_head; struct de_desc* tx_ring; int setup_frame; int pdev; TYPE_1__* tx_skb; } ;
struct de_desc {void* opts1; void* addr1; void* opts2; } ;
struct TYPE_2__ {int mapping; int skb; } ;


 int AcceptAllMulticast ;
 int AcceptAllPhys ;
 int DE_DUMMY_SKB ;
 int DE_SETUP_SKB ;
 int DE_TX_RING_SIZE ;
 int DescOwn ;
 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 int MacMode ;
 void* NEXT_TX (unsigned int) ;
 int NormalTxPoll ;
 int PCI_DMA_TODEVICE ;
 int RingEnd ;
 int SetupFrame ;
 scalar_t__ TX_BUFFS_AVAIL (struct de_private*) ;
 int TxPoll ;
 int build_setup_frame_hash (int ,struct net_device*) ;
 int build_setup_frame_perfect (int ,struct net_device*) ;
 void* cpu_to_le32 (int) ;
 int dr32 (int ) ;
 int dw32 (int ,int) ;
 struct de_private* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int pci_map_single (int ,int ,int,int ) ;
 int wmb () ;

__attribute__((used)) static void __de_set_rx_mode (struct net_device *dev)
{
 struct de_private *de = netdev_priv(dev);
 u32 macmode;
 unsigned int entry;
 u32 mapping;
 struct de_desc *txd;
 struct de_desc *dummy_txd = ((void*)0);

 macmode = dr32(MacMode) & ~(AcceptAllMulticast | AcceptAllPhys);

 if (dev->flags & IFF_PROMISC) {
  macmode |= AcceptAllMulticast | AcceptAllPhys;
  goto out;
 }

 if ((dev->mc_count > 1000) || (dev->flags & IFF_ALLMULTI)) {

  macmode |= AcceptAllMulticast;
  goto out;
 }



 if (dev->mc_count > 14)
  build_setup_frame_hash (de->setup_frame, dev);
 else
  build_setup_frame_perfect (de->setup_frame, dev);





 entry = de->tx_head;


 if (entry != 0) {
  de->tx_skb[entry].skb = DE_DUMMY_SKB;

  dummy_txd = &de->tx_ring[entry];
  dummy_txd->opts2 = (entry == (DE_TX_RING_SIZE - 1)) ?
       cpu_to_le32(RingEnd) : 0;
  dummy_txd->addr1 = 0;



  entry = NEXT_TX(entry);
 }

 de->tx_skb[entry].skb = DE_SETUP_SKB;
 de->tx_skb[entry].mapping = mapping =
     pci_map_single (de->pdev, de->setup_frame,
       sizeof (de->setup_frame), PCI_DMA_TODEVICE);


 txd = &de->tx_ring[entry];
 if (entry == (DE_TX_RING_SIZE - 1))
  txd->opts2 = cpu_to_le32(SetupFrame | RingEnd | sizeof (de->setup_frame));
 else
  txd->opts2 = cpu_to_le32(SetupFrame | sizeof (de->setup_frame));
 txd->addr1 = cpu_to_le32(mapping);
 wmb();

 txd->opts1 = cpu_to_le32(DescOwn);
 wmb();

 if (dummy_txd) {
  dummy_txd->opts1 = cpu_to_le32(DescOwn);
  wmb();
 }

 de->tx_head = NEXT_TX(entry);

 if (TX_BUFFS_AVAIL(de) == 0)
  netif_stop_queue(dev);


 dw32(TxPoll, NormalTxPoll);

out:
 if (macmode != dr32(MacMode))
  dw32(MacMode, macmode);
}
