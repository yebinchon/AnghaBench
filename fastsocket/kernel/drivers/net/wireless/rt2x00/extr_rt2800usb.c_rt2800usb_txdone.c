
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct rt2x00_dev {int txstatus_fifo; } ;
struct queue_entry {int entry_idx; int flags; } ;
struct data_queue {int dummy; } ;
typedef enum txdone_entry_desc_flags { ____Placeholder_txdone_entry_desc_flags } txdone_entry_desc_flags ;


 int ENTRY_DATA_STATUS_PENDING ;
 int ENTRY_OWNER_DEVICE_DATA ;
 int Q_INDEX_DONE ;
 int TXDONE_SUCCESS ;
 int TX_STA_FIFO_PID_QUEUE ;
 scalar_t__ kfifo_get (int *,int *) ;
 scalar_t__ likely (int) ;
 int rt2800_txdone_entry (struct queue_entry*,int ,int ) ;
 int rt2800usb_get_txwi (struct queue_entry*) ;
 int rt2800usb_txdone_entry_check (struct queue_entry*,int ) ;
 int rt2x00_get_field32 (int ,int ) ;
 int rt2x00_warn (struct rt2x00_dev*,char*,int ,...) ;
 int rt2x00lib_txdone_noinfo (struct queue_entry*,int) ;
 int rt2x00queue_empty (struct data_queue*) ;
 struct queue_entry* rt2x00queue_get_entry (struct data_queue*,int ) ;
 struct data_queue* rt2x00queue_get_tx_queue (struct rt2x00_dev*,int ) ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void rt2800usb_txdone(struct rt2x00_dev *rt2x00dev)
{
 struct data_queue *queue;
 struct queue_entry *entry;
 u32 reg;
 u8 qid;
 enum txdone_entry_desc_flags done_status;

 while (kfifo_get(&rt2x00dev->txstatus_fifo, &reg)) {




  qid = rt2x00_get_field32(reg, TX_STA_FIFO_PID_QUEUE);
  queue = rt2x00queue_get_tx_queue(rt2x00dev, qid);

  if (unlikely(rt2x00queue_empty(queue))) {
   rt2x00_warn(rt2x00dev, "Got TX status for an empty queue %u, dropping\n",
        qid);
   break;
  }

  entry = rt2x00queue_get_entry(queue, Q_INDEX_DONE);

  if (unlikely(test_bit(ENTRY_OWNER_DEVICE_DATA, &entry->flags) ||
        !test_bit(ENTRY_DATA_STATUS_PENDING, &entry->flags))) {
   rt2x00_warn(rt2x00dev, "Data pending for entry %u in queue %u\n",
        entry->entry_idx, qid);
   break;
  }

  done_status = rt2800usb_txdone_entry_check(entry, reg);
  if (likely(done_status == TXDONE_SUCCESS))
   rt2800_txdone_entry(entry, reg, rt2800usb_get_txwi(entry));
  else
   rt2x00lib_txdone_noinfo(entry, done_status);
 }
}
