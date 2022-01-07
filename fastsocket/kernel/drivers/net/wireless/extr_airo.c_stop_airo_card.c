
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_device {int base_addr; struct airo_info* ml_priv; } ;
struct airo_info {int tfm; int shared_dma; int shared; scalar_t__ pci; scalar_t__ pciaux; scalar_t__ pcimem; int flags; int SSID; int APList; int rssi; int flash; int txq; struct net_device* wifidev; } ;


 int FLAG_MPI ;
 int FLAG_RADIO_DOWN ;
 int FLAG_REGISTERED ;
 int PCI_SHARED_LEN ;
 int airo_networks_free (struct airo_info*) ;
 int clear_bit (int ,int *) ;
 int crypto_free_cipher (int ) ;
 int del_airo_dev (struct airo_info*) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int disable_MAC (struct airo_info*,int) ;
 int disable_interrupts (struct airo_info*) ;
 int free_netdev (struct net_device*) ;
 int iounmap (scalar_t__) ;
 int kfree (int ) ;
 int mpi_unmap_card (scalar_t__) ;
 int pci_free_consistent (scalar_t__,int ,int ,int ) ;
 int release_region (int ,int) ;
 int set_bit (int ,int *) ;
 struct sk_buff* skb_dequeue (int *) ;
 int skb_queue_empty (int *) ;
 int takedown_proc_entry (struct net_device*,struct airo_info*) ;
 scalar_t__ test_bit (int ,int *) ;
 int unregister_netdev (struct net_device*) ;

void stop_airo_card( struct net_device *dev, int freeres )
{
 struct airo_info *ai = dev->ml_priv;

 set_bit(FLAG_RADIO_DOWN, &ai->flags);
 disable_MAC(ai, 1);
 disable_interrupts(ai);
 takedown_proc_entry( dev, ai );
 if (test_bit(FLAG_REGISTERED, &ai->flags)) {
  unregister_netdev( dev );
  if (ai->wifidev) {
   unregister_netdev(ai->wifidev);
   free_netdev(ai->wifidev);
   ai->wifidev = ((void*)0);
  }
  clear_bit(FLAG_REGISTERED, &ai->flags);
 }



 if (test_bit(FLAG_MPI, &ai->flags) && !skb_queue_empty(&ai->txq)) {
  struct sk_buff *skb = ((void*)0);
  for (;(skb = skb_dequeue(&ai->txq));)
   dev_kfree_skb(skb);
 }

 airo_networks_free (ai);

 kfree(ai->flash);
 kfree(ai->rssi);
 kfree(ai->APList);
 kfree(ai->SSID);
 if (freeres) {

         release_region( dev->base_addr, 64 );
  if (test_bit(FLAG_MPI, &ai->flags)) {
   if (ai->pci)
    mpi_unmap_card(ai->pci);
   if (ai->pcimem)
    iounmap(ai->pcimem);
   if (ai->pciaux)
    iounmap(ai->pciaux);
   pci_free_consistent(ai->pci, PCI_SHARED_LEN,
    ai->shared, ai->shared_dma);
  }
        }
 crypto_free_cipher(ai->tfm);
 del_airo_dev(ai);
 free_netdev( dev );
}
