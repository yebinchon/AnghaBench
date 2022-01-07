
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct host_txq_entry {int* status; scalar_t__ incarn; int skb; struct fore200e_vc_map* vc_map; TYPE_3__* tpd; int data; } ;
struct host_txq {scalar_t__ txing; size_t tail; struct host_txq_entry* host_entry; } ;
struct fore200e_vc_map {scalar_t__ incarn; struct atm_vcc* vcc; } ;
struct fore200e {struct host_txq host_txq; TYPE_4__* atm_dev; TYPE_1__* bus; } ;
struct atm_vcc {TYPE_5__* stats; int (* pop ) (struct atm_vcc*,int ) ;int flags; } ;
struct TYPE_12__ {int sk_wmem_alloc; } ;
struct TYPE_11__ {int tx; int tx_err; } ;
struct TYPE_10__ {int number; } ;
struct TYPE_9__ {TYPE_2__* tsd; } ;
struct TYPE_8__ {int length; int buffer; } ;
struct TYPE_7__ {int (* dma_unmap ) (struct fore200e*,int ,int ,int ) ;} ;


 int ASSERT (struct atm_vcc*) ;
 int ATM_VF_READY ;
 int DMA_TO_DEVICE ;
 int DPRINTK (int,char*,struct host_txq_entry*,...) ;
 int FORE200E_NEXT_ENTRY (size_t,int ) ;
 int QUEUE_SIZE_TX ;
 int STATUS_COMPLETE ;
 int STATUS_ERROR ;
 int STATUS_FREE ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 int dev_kfree_skb_any (int ) ;
 int kfree (int ) ;
 TYPE_6__* sk_atm (struct atm_vcc*) ;
 int stub1 (struct fore200e*,int ,int ,int ) ;
 int stub2 (struct atm_vcc*,int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void
fore200e_tx_irq(struct fore200e* fore200e)
{
    struct host_txq* txq = &fore200e->host_txq;
    struct host_txq_entry* entry;
    struct atm_vcc* vcc;
    struct fore200e_vc_map* vc_map;

    if (fore200e->host_txq.txing == 0)
 return;

    for (;;) {

 entry = &txq->host_entry[ txq->tail ];

        if ((*entry->status & STATUS_COMPLETE) == 0) {
     break;
 }

 DPRINTK(3, "TX COMPLETED: entry = %p [tail = %d], vc_map = %p, skb = %p\n",
  entry, txq->tail, entry->vc_map, entry->skb);


 kfree(entry->data);


 fore200e->bus->dma_unmap(fore200e, entry->tpd->tsd[ 0 ].buffer, entry->tpd->tsd[ 0 ].length,
     DMA_TO_DEVICE);

 vc_map = entry->vc_map;


 if ((vc_map->vcc == ((void*)0)) ||
     (test_bit(ATM_VF_READY, &vc_map->vcc->flags) == 0)) {

     DPRINTK(1, "no ready vcc found for PDU sent on device %d\n",
      fore200e->atm_dev->number);

     dev_kfree_skb_any(entry->skb);
 }
 else {
     ASSERT(vc_map->vcc);


     if (vc_map->incarn != entry->incarn) {
  DPRINTK(1, "vcc closed-then-re-opened; dropping PDU sent on device %d\n",
   fore200e->atm_dev->number);

  dev_kfree_skb_any(entry->skb);
     }
     else {
  vcc = vc_map->vcc;
  ASSERT(vcc);


  if (vcc->pop) {
      vcc->pop(vcc, entry->skb);
  }
  else {
      dev_kfree_skb_any(entry->skb);
  }


  if (atomic_read(&sk_atm(vcc)->sk_wmem_alloc) < 0) {
      atomic_set(&sk_atm(vcc)->sk_wmem_alloc, 0);
  }


  if (*entry->status & STATUS_ERROR)
      atomic_inc(&vcc->stats->tx_err);
  else
      atomic_inc(&vcc->stats->tx);
     }
 }

 *entry->status = STATUS_FREE;

 fore200e->host_txq.txing--;

 FORE200E_NEXT_ENTRY(txq->tail, QUEUE_SIZE_TX);
    }
}
