
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nr_sbal_nop; } ;
struct qdio_q {int first_to_check; int nr; TYPE_2__* irq_ptr; TYPE_1__ q_stats; int nr_buf_used; } ;
struct TYPE_4__ {int perf_stat_enabled; } ;


 int BUG () ;
 int DBF_DEV_EVENT (int ,TYPE_2__*,char*,int ,...) ;
 int DBF_INFO ;
 scalar_t__ QDIO_IQDIO_QFMT ;
 int QDIO_MAX_BUFFERS_MASK ;






 int account_sbals (struct qdio_q*,int) ;
 int account_sbals_error (struct qdio_q*,int) ;
 void* add_buf (int,int) ;
 int atomic_read (int *) ;
 int atomic_sub (int,int *) ;
 int get_buf_states (struct qdio_q*,int,unsigned char*,int,int ,int) ;
 int min (int ,int ) ;
 scalar_t__ multicast_outbound (struct qdio_q*) ;
 int pci_out_supported (struct qdio_q*) ;
 int process_buffer_error (struct qdio_q*,int) ;
 int qdio_siga_sync_q (struct qdio_q*) ;
 scalar_t__ queue_type (struct qdio_q*) ;

__attribute__((used)) static int get_outbound_buffer_frontier(struct qdio_q *q)
{
 int count, stop;
 unsigned char state;

 if (((queue_type(q) != QDIO_IQDIO_QFMT) && !pci_out_supported(q)) ||
     (queue_type(q) == QDIO_IQDIO_QFMT && multicast_outbound(q)))
  qdio_siga_sync_q(q);





 count = min(atomic_read(&q->nr_buf_used), QDIO_MAX_BUFFERS_MASK);
 stop = add_buf(q->first_to_check, count);
 if (q->first_to_check == stop)
  goto out;

 count = get_buf_states(q, q->first_to_check, &state, count, 0, 1);
 if (!count)
  goto out;

 switch (state) {
 case 128:
  BUG();
 case 132:

  DBF_DEV_EVENT(DBF_INFO, q->irq_ptr,
   "out empty:%1d %02x", q->nr, count);

  atomic_sub(count, &q->nr_buf_used);
  q->first_to_check = add_buf(q->first_to_check, count);
  if (q->irq_ptr->perf_stat_enabled)
   account_sbals(q, count);

  break;
 case 131:
  process_buffer_error(q, count);
  q->first_to_check = add_buf(q->first_to_check, count);
  atomic_sub(count, &q->nr_buf_used);
  if (q->irq_ptr->perf_stat_enabled)
   account_sbals_error(q, count);
  break;
 case 133:

  if (q->irq_ptr->perf_stat_enabled)
   q->q_stats.nr_sbal_nop++;
  DBF_DEV_EVENT(DBF_INFO, q->irq_ptr, "out primed:%1d",
         q->nr);
  break;
 case 129:
 case 130:
  break;
 default:
  BUG();
 }

out:
 return q->first_to_check;
}
