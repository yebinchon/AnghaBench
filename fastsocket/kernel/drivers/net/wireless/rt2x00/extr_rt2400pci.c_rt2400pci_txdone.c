
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct txdone_entry_desc {int retry; scalar_t__ flags; } ;
struct rt2x00_dev {int dummy; } ;
struct queue_entry_priv_mmio {int desc; } ;
struct queue_entry {struct queue_entry_priv_mmio* priv_data; } ;
struct data_queue {int dummy; } ;
typedef enum data_queue_qid { ____Placeholder_data_queue_qid } data_queue_qid ;


 int Q_INDEX_DONE ;
 int TXDONE_EXCESSIVE_RETRY ;
 int TXDONE_FAILURE ;
 int TXDONE_SUCCESS ;
 int TXD_W0_OWNER_NIC ;
 int TXD_W0_RESULT ;
 int TXD_W0_RETRY_COUNT ;
 int TXD_W0_VALID ;
 int __set_bit (int ,scalar_t__*) ;
 int rt2x00_desc_read (int ,int ,int *) ;
 int rt2x00_get_field32 (int ,int ) ;
 int rt2x00lib_txdone (struct queue_entry*,struct txdone_entry_desc*) ;
 int rt2x00queue_empty (struct data_queue*) ;
 struct queue_entry* rt2x00queue_get_entry (struct data_queue*,int ) ;
 struct data_queue* rt2x00queue_get_tx_queue (struct rt2x00_dev*,int const) ;

__attribute__((used)) static void rt2400pci_txdone(struct rt2x00_dev *rt2x00dev,
        const enum data_queue_qid queue_idx)
{
 struct data_queue *queue = rt2x00queue_get_tx_queue(rt2x00dev, queue_idx);
 struct queue_entry_priv_mmio *entry_priv;
 struct queue_entry *entry;
 struct txdone_entry_desc txdesc;
 u32 word;

 while (!rt2x00queue_empty(queue)) {
  entry = rt2x00queue_get_entry(queue, Q_INDEX_DONE);
  entry_priv = entry->priv_data;
  rt2x00_desc_read(entry_priv->desc, 0, &word);

  if (rt2x00_get_field32(word, TXD_W0_OWNER_NIC) ||
      !rt2x00_get_field32(word, TXD_W0_VALID))
   break;




  txdesc.flags = 0;
  switch (rt2x00_get_field32(word, TXD_W0_RESULT)) {
  case 0:
  case 1:
   __set_bit(TXDONE_SUCCESS, &txdesc.flags);
   break;
  case 2:
   __set_bit(TXDONE_EXCESSIVE_RETRY, &txdesc.flags);

  default:
   __set_bit(TXDONE_FAILURE, &txdesc.flags);
  }
  txdesc.retry = rt2x00_get_field32(word, TXD_W0_RETRY_COUNT);

  rt2x00lib_txdone(entry, &txdesc);
 }
}
