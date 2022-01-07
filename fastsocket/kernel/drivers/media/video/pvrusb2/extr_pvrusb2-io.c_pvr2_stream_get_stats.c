
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_stream_stats {scalar_t__ bytes_processed; scalar_t__ buffers_failed; scalar_t__ buffers_processed; int buffers_in_ready; int buffers_in_idle; int buffers_in_queue; } ;
struct pvr2_stream {int list_lock; scalar_t__ bytes_processed; scalar_t__ buffers_failed; scalar_t__ buffers_processed; int r_count; int i_count; int q_count; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void pvr2_stream_get_stats(struct pvr2_stream *sp,
      struct pvr2_stream_stats *stats,
      int zero_counts)
{
 unsigned long irq_flags;
 spin_lock_irqsave(&sp->list_lock,irq_flags);
 if (stats) {
  stats->buffers_in_queue = sp->q_count;
  stats->buffers_in_idle = sp->i_count;
  stats->buffers_in_ready = sp->r_count;
  stats->buffers_processed = sp->buffers_processed;
  stats->buffers_failed = sp->buffers_failed;
  stats->bytes_processed = sp->bytes_processed;
 }
 if (zero_counts) {
  sp->buffers_processed = 0;
  sp->buffers_failed = 0;
  sp->bytes_processed = 0;
 }
 spin_unlock_irqrestore(&sp->list_lock,irq_flags);
}
