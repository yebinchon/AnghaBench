
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct qeth_qdio_out_q {int queue_no; TYPE_9__* card; int used_buffers; int set_pci_flags_count; int do_pack; TYPE_1__* bufstates; struct qeth_qdio_out_buffer** bufs; } ;
struct qeth_qdio_out_buffer {int next_element_to_fill; TYPE_4__* buffer; } ;
struct TYPE_19__ {int bufs_sent; scalar_t__ outbound_do_qdio_start_time; int outbound_do_qdio_time; int outbound_do_qdio_cnt; } ;
struct TYPE_18__ {scalar_t__ performance_stats; } ;
struct TYPE_17__ {int tx_errors; } ;
struct TYPE_13__ {scalar_t__ type; } ;
struct TYPE_20__ {TYPE_8__ perf_stats; TYPE_7__ options; TYPE_6__ stats; TYPE_5__* dev; TYPE_2__ info; } ;
struct TYPE_16__ {int trans_start; } ;
struct TYPE_15__ {TYPE_3__* element; } ;
struct TYPE_14__ {int sflags; int eflags; } ;
struct TYPE_12__ {struct qeth_qdio_out_buffer* user; } ;


 int CARD_DDEV (TYPE_9__*) ;
 int CARD_DDEV_ID (TYPE_9__*) ;
 int QDIO_ERROR_SIGA_TARGET ;
 unsigned int QDIO_FLAG_PCI_OUT ;
 unsigned int QDIO_FLAG_SYNC_OUTPUT ;
 int QDIO_MAX_BUFFERS_PER_Q ;
 scalar_t__ QETH_CARD_TYPE_IQD ;
 int QETH_DBF_TEXT (int ,int,char*) ;
 int QETH_DBF_TEXT_ (int ,int,char*,int) ;
 scalar_t__ QETH_HIGH_WATERMARK_PACK ;
 scalar_t__ QETH_WATERMARK_PACK_FUZZ ;
 int SBAL_EFLAGS_LAST_ENTRY ;
 int SBAL_SFLAGS0_PCI_REQ ;
 int TRACE ;
 int atomic_add (int,int *) ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 int do_QDIO (int ,unsigned int,int,int,int) ;
 int jiffies ;
 scalar_t__ qeth_get_micros () ;
 int qeth_schedule_recovery (TYPE_9__*) ;

__attribute__((used)) static void qeth_flush_buffers(struct qeth_qdio_out_q *queue, int index,
          int count)
{
 struct qeth_qdio_out_buffer *buf;
 int rc;
 int i;
 unsigned int qdio_flags;

 for (i = index; i < index + count; ++i) {
  int bidx = i % QDIO_MAX_BUFFERS_PER_Q;
  buf = queue->bufs[bidx];
  buf->buffer->element[buf->next_element_to_fill - 1].eflags |=
    SBAL_EFLAGS_LAST_ENTRY;

  if (queue->bufstates)
   queue->bufstates[bidx].user = buf;

  if (queue->card->info.type == QETH_CARD_TYPE_IQD)
   continue;

  if (!queue->do_pack) {
   if ((atomic_read(&queue->used_buffers) >=
    (QETH_HIGH_WATERMARK_PACK -
     QETH_WATERMARK_PACK_FUZZ)) &&
       !atomic_read(&queue->set_pci_flags_count)) {


    atomic_inc(&queue->set_pci_flags_count);
    buf->buffer->element[0].sflags |= SBAL_SFLAGS0_PCI_REQ;
   }
  } else {
   if (!atomic_read(&queue->set_pci_flags_count)) {
    atomic_inc(&queue->set_pci_flags_count);
    buf->buffer->element[0].sflags |= SBAL_SFLAGS0_PCI_REQ;
   }
  }
 }

 queue->card->dev->trans_start = jiffies;
 if (queue->card->options.performance_stats) {
  queue->card->perf_stats.outbound_do_qdio_cnt++;
  queue->card->perf_stats.outbound_do_qdio_start_time =
   qeth_get_micros();
 }
 qdio_flags = QDIO_FLAG_SYNC_OUTPUT;
 if (atomic_read(&queue->set_pci_flags_count))
  qdio_flags |= QDIO_FLAG_PCI_OUT;
 rc = do_QDIO(CARD_DDEV(queue->card), qdio_flags,
       queue->queue_no, index, count);
 if (queue->card->options.performance_stats)
  queue->card->perf_stats.outbound_do_qdio_time +=
   qeth_get_micros() -
   queue->card->perf_stats.outbound_do_qdio_start_time;
 atomic_add(count, &queue->used_buffers);
 if (rc) {
  queue->card->stats.tx_errors += count;

  if (rc == QDIO_ERROR_SIGA_TARGET)
   return;
  QETH_DBF_TEXT(TRACE, 2, "flushbuf");
  QETH_DBF_TEXT_(TRACE, 2, " q%d", queue->queue_no);
  QETH_DBF_TEXT_(TRACE, 2, " idx%d", index);
  QETH_DBF_TEXT_(TRACE, 2, " c%d", count);
  QETH_DBF_TEXT_(TRACE, 2, " err%d", rc);
  QETH_DBF_TEXT_(TRACE, 2, "%s", CARD_DDEV_ID(queue->card));



  qeth_schedule_recovery(queue->card);
  return;
 }
 if (queue->card->options.performance_stats)
  queue->card->perf_stats.bufs_sent += count;
}
