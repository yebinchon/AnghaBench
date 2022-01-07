
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct rt2x00_dev {int txstatus_fifo; } ;
struct data_queue {int dummy; } ;


 scalar_t__ QID_RX ;
 int Q_INDEX ;
 int Q_INDEX_DONE ;
 int TX_STA_FIFO_PID_QUEUE ;
 scalar_t__ kfifo_get (int *,int *) ;
 int rt2800pci_txdone_find_entry ;
 int rt2800pci_txdone_match_first ;
 int rt2800pci_txdone_release_entries ;
 scalar_t__ rt2x00_get_field32 (int ,int ) ;
 int rt2x00_warn (struct rt2x00_dev*,char*,scalar_t__) ;
 int rt2x00queue_empty (struct data_queue*) ;
 int rt2x00queue_for_each_entry (struct data_queue*,int ,int ,int *,int ) ;
 struct data_queue* rt2x00queue_get_tx_queue (struct rt2x00_dev*,scalar_t__) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool rt2800pci_txdone(struct rt2x00_dev *rt2x00dev)
{
 struct data_queue *queue;
 u32 status;
 u8 qid;
 int max_tx_done = 16;

 while (kfifo_get(&rt2x00dev->txstatus_fifo, &status)) {
  qid = rt2x00_get_field32(status, TX_STA_FIFO_PID_QUEUE);
  if (unlikely(qid >= QID_RX)) {




   rt2x00_warn(rt2x00dev, "Got TX status report with unexpected pid %u, dropping\n",
        qid);
   break;
  }

  queue = rt2x00queue_get_tx_queue(rt2x00dev, qid);
  if (unlikely(queue == ((void*)0))) {




   rt2x00_warn(rt2x00dev, "Got TX status for an unavailable queue %u, dropping\n",
        qid);
   break;
  }

  if (unlikely(rt2x00queue_empty(queue))) {




   rt2x00_warn(rt2x00dev, "Got TX status for an empty queue %u, dropping\n",
        qid);
   break;
  }





  if (!rt2x00queue_for_each_entry(queue, Q_INDEX_DONE,
      Q_INDEX, &status,
      rt2800pci_txdone_find_entry)) {




   if (!rt2x00queue_for_each_entry(queue, Q_INDEX_DONE,
       Q_INDEX, &status,
       rt2800pci_txdone_match_first)) {
    rt2x00_warn(rt2x00dev, "No frame found for TX status on queue %u, dropping\n",
         qid);
    break;
   }
  }




  rt2x00queue_for_each_entry(queue, Q_INDEX_DONE,
        Q_INDEX, ((void*)0),
        rt2800pci_txdone_release_entries);

  if (--max_tx_done == 0)
   break;
 }

 return !max_tx_done;
}
