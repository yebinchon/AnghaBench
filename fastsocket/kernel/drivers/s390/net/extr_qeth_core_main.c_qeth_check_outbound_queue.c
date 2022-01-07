
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct qeth_qdio_out_q {int next_buf_to_fill; int do_pack; int state; TYPE_3__* card; int set_pci_flags_count; int used_buffers; } ;
struct TYPE_5__ {int bufs_sent_pack; } ;
struct TYPE_4__ {scalar_t__ performance_stats; } ;
struct TYPE_6__ {TYPE_2__ perf_stats; TYPE_1__ options; int dev; } ;


 scalar_t__ QETH_LOW_WATERMARK_PACK ;
 int QETH_OUT_Q_LOCKED_FLUSH ;
 scalar_t__ QETH_OUT_Q_UNLOCKED ;
 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,scalar_t__) ;
 scalar_t__ atomic_xchg (int *,int ) ;
 int barrier () ;
 int netif_stop_queue (int ) ;
 int qeth_flush_buffers (struct qeth_qdio_out_q*,int,int) ;
 scalar_t__ qeth_flush_buffers_on_no_pci (struct qeth_qdio_out_q*) ;
 scalar_t__ qeth_switch_to_nonpacking_if_needed (struct qeth_qdio_out_q*) ;

__attribute__((used)) static void qeth_check_outbound_queue(struct qeth_qdio_out_q *queue)
{
 int index;
 int flush_cnt = 0;
 int q_was_packing = 0;





 if ((atomic_read(&queue->used_buffers) <= QETH_LOW_WATERMARK_PACK) ||
     !atomic_read(&queue->set_pci_flags_count)) {
  if (atomic_xchg(&queue->state, QETH_OUT_Q_LOCKED_FLUSH) ==
    QETH_OUT_Q_UNLOCKED) {





   netif_stop_queue(queue->card->dev);
   index = queue->next_buf_to_fill;
   q_was_packing = queue->do_pack;

   barrier();
   flush_cnt += qeth_switch_to_nonpacking_if_needed(queue);
   if (!flush_cnt &&
       !atomic_read(&queue->set_pci_flags_count))
    flush_cnt +=
     qeth_flush_buffers_on_no_pci(queue);
   if (queue->card->options.performance_stats &&
       q_was_packing)
    queue->card->perf_stats.bufs_sent_pack +=
     flush_cnt;
   if (flush_cnt)
    qeth_flush_buffers(queue, index, flush_cnt);
   atomic_set(&queue->state, QETH_OUT_Q_UNLOCKED);
  }
 }
}
