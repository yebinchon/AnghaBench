
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct nic {struct net_device* netdev; int cb_lock; int cbs_avail; int pdev; scalar_t__ cbs; struct cb* cb_to_clean; } ;
struct TYPE_6__ {int tx_bytes; int tx_packets; } ;
struct net_device {TYPE_1__ stats; } ;
struct TYPE_7__ {int size; int buf_addr; } ;
struct TYPE_8__ {TYPE_2__ tbd; } ;
struct TYPE_9__ {TYPE_3__ tcb; } ;
struct cb {int status; TYPE_5__* skb; TYPE_4__ u; struct cb* next; } ;
struct TYPE_10__ {scalar_t__ len; } ;


 int KERN_DEBUG ;
 int PCI_DMA_TODEVICE ;
 int cb_complete ;
 int cpu_to_le16 (int ) ;
 int dev_kfree_skb_any (TYPE_5__*) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 scalar_t__ likely (int ) ;
 int netif_printk (struct nic*,int ,int ,struct net_device*,char*,int,int) ;
 scalar_t__ netif_queue_stopped (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int pci_unmap_single (int ,int ,int ,int ) ;
 int rmb () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tx_done ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int e100_tx_clean(struct nic *nic)
{
 struct net_device *dev = nic->netdev;
 struct cb *cb;
 int tx_cleaned = 0;

 spin_lock(&nic->cb_lock);


 for (cb = nic->cb_to_clean;
     cb->status & cpu_to_le16(cb_complete);
     cb = nic->cb_to_clean = cb->next) {
  rmb();
  netif_printk(nic, tx_done, KERN_DEBUG, nic->netdev,
        "cb[%d]->status = 0x%04X\n",
        (int)(((void*)cb - (void*)nic->cbs)/sizeof(struct cb)),
        cb->status);

  if (likely(cb->skb != ((void*)0))) {
   dev->stats.tx_packets++;
   dev->stats.tx_bytes += cb->skb->len;

   pci_unmap_single(nic->pdev,
    le32_to_cpu(cb->u.tcb.tbd.buf_addr),
    le16_to_cpu(cb->u.tcb.tbd.size),
    PCI_DMA_TODEVICE);
   dev_kfree_skb_any(cb->skb);
   cb->skb = ((void*)0);
   tx_cleaned = 1;
  }
  cb->status = 0;
  nic->cbs_avail++;
 }

 spin_unlock(&nic->cb_lock);


 if (unlikely(tx_cleaned && netif_queue_stopped(nic->netdev)))
  netif_wake_queue(nic->netdev);

 return tx_cleaned;
}
