
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct qeth_qdio_out_q {int do_pack; TYPE_3__* card; int used_buffers; } ;
struct TYPE_5__ {int sc_dp_p; } ;
struct TYPE_4__ {scalar_t__ performance_stats; } ;
struct TYPE_6__ {TYPE_2__ perf_stats; TYPE_1__ options; } ;


 int QETH_DBF_TEXT (int ,int,char*) ;
 scalar_t__ QETH_HIGH_WATERMARK_PACK ;
 int TRACE ;
 scalar_t__ atomic_read (int *) ;

__attribute__((used)) static void qeth_switch_to_packing_if_needed(struct qeth_qdio_out_q *queue)
{
 if (!queue->do_pack) {
  if (atomic_read(&queue->used_buffers)
      >= QETH_HIGH_WATERMARK_PACK){

   QETH_DBF_TEXT(TRACE, 6, "np->pack");
   if (queue->card->options.performance_stats)
    queue->card->perf_stats.sc_dp_p++;
   queue->do_pack = 1;
  }
 }
}
