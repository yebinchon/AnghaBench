
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct txdone_entry_desc {int retry; scalar_t__ flags; } ;
struct rt2x00_dev {TYPE_2__* ops; } ;
struct queue_entry_priv_mmio {int desc; } ;
struct queue_entry {int entry_idx; struct queue_entry_priv_mmio* priv_data; } ;
struct data_queue {int limit; struct queue_entry* entries; } ;
struct TYPE_4__ {TYPE_1__* tx; } ;
struct TYPE_3__ {int entry_num; } ;


 int Q_INDEX_DONE ;
 int STA_CSR4 ;
 int STA_CSR4_PID_SUBTYPE ;
 int STA_CSR4_PID_TYPE ;
 int STA_CSR4_RETRY_COUNT ;
 int STA_CSR4_TX_RESULT ;
 int STA_CSR4_VALID ;
 int TXDONE_EXCESSIVE_RETRY ;
 int TXDONE_FAILURE ;
 int TXDONE_FALLBACK ;
 int TXDONE_SUCCESS ;
 int TXDONE_UNKNOWN ;
 int TXD_W0_OWNER_NIC ;
 int TXD_W0_VALID ;
 int __set_bit (int ,scalar_t__*) ;
 int rt2x00_desc_read (int ,int ,int *) ;
 int rt2x00_get_field32 (int ,int ) ;
 int rt2x00_warn (struct rt2x00_dev*,char*,int ) ;
 int rt2x00lib_txdone (struct queue_entry*,struct txdone_entry_desc*) ;
 int rt2x00lib_txdone_noinfo (struct queue_entry*,int ) ;
 int rt2x00mmio_register_read (struct rt2x00_dev*,int ,int *) ;
 struct queue_entry* rt2x00queue_get_entry (struct data_queue*,int ) ;
 struct data_queue* rt2x00queue_get_tx_queue (struct rt2x00_dev*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void rt61pci_txdone(struct rt2x00_dev *rt2x00dev)
{
 struct data_queue *queue;
 struct queue_entry *entry;
 struct queue_entry *entry_done;
 struct queue_entry_priv_mmio *entry_priv;
 struct txdone_entry_desc txdesc;
 u32 word;
 u32 reg;
 int type;
 int index;
 int i;
 for (i = 0; i < rt2x00dev->ops->tx->entry_num; i++) {
  rt2x00mmio_register_read(rt2x00dev, STA_CSR4, &reg);
  if (!rt2x00_get_field32(reg, STA_CSR4_VALID))
   break;





  type = rt2x00_get_field32(reg, STA_CSR4_PID_TYPE);
  queue = rt2x00queue_get_tx_queue(rt2x00dev, type);
  if (unlikely(!queue))
   continue;





  index = rt2x00_get_field32(reg, STA_CSR4_PID_SUBTYPE);
  if (unlikely(index >= queue->limit))
   continue;

  entry = &queue->entries[index];
  entry_priv = entry->priv_data;
  rt2x00_desc_read(entry_priv->desc, 0, &word);

  if (rt2x00_get_field32(word, TXD_W0_OWNER_NIC) ||
      !rt2x00_get_field32(word, TXD_W0_VALID))
   return;

  entry_done = rt2x00queue_get_entry(queue, Q_INDEX_DONE);
  while (entry != entry_done) {



   rt2x00_warn(rt2x00dev, "TX status report missed for entry %d\n",
        entry_done->entry_idx);

   rt2x00lib_txdone_noinfo(entry_done, TXDONE_UNKNOWN);
   entry_done = rt2x00queue_get_entry(queue, Q_INDEX_DONE);
  }




  txdesc.flags = 0;
  switch (rt2x00_get_field32(reg, STA_CSR4_TX_RESULT)) {
  case 0:
   __set_bit(TXDONE_SUCCESS, &txdesc.flags);
   break;
  case 6:
   __set_bit(TXDONE_EXCESSIVE_RETRY, &txdesc.flags);

  default:
   __set_bit(TXDONE_FAILURE, &txdesc.flags);
  }
  txdesc.retry = rt2x00_get_field32(reg, STA_CSR4_RETRY_COUNT);





  if (txdesc.retry)
   __set_bit(TXDONE_FALLBACK, &txdesc.flags);

  rt2x00lib_txdone(entry, &txdesc);
 }
}
