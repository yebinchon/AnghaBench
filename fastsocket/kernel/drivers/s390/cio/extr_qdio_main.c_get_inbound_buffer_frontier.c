
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nr_sbal_nop; } ;
struct qdio_q {int first_to_check; TYPE_2__* irq_ptr; TYPE_1__ q_stats; int nr_buf_used; } ;
struct TYPE_4__ {int perf_stat_enabled; } ;


 int BUG () ;
 int DBF_DEV_EVENT (int ,TYPE_2__*,char*) ;
 int DBF_INFO ;
 int QDIO_MAX_BUFFERS_MASK ;





 int account_sbals (struct qdio_q*,int) ;
 int account_sbals_error (struct qdio_q*,int) ;
 void* add_buf (int,int) ;
 int atomic_read (int *) ;
 int atomic_sub (int,int *) ;
 int get_buf_states (struct qdio_q*,int,unsigned char*,int,int,int ) ;
 int inbound_primed (struct qdio_q*,int) ;
 int inbound_queue_full ;
 int min (int ,int ) ;
 int process_buffer_error (struct qdio_q*,int) ;
 int qperf_inc (struct qdio_q*,int ) ;

__attribute__((used)) static int get_inbound_buffer_frontier(struct qdio_q *q)
{
 int count, stop;
 unsigned char state;





 count = min(atomic_read(&q->nr_buf_used), QDIO_MAX_BUFFERS_MASK);
 stop = add_buf(q->first_to_check, count);

 if (q->first_to_check == stop)
  goto out;





 count = get_buf_states(q, q->first_to_check, &state, count, 1, 0);
 if (!count)
  goto out;

 switch (state) {
 case 128:
  inbound_primed(q, count);
  q->first_to_check = add_buf(q->first_to_check, count);
  if (atomic_sub(count, &q->nr_buf_used) == 0)
   qperf_inc(q, inbound_queue_full);
  if (q->irq_ptr->perf_stat_enabled)
   account_sbals(q, count);
  break;
 case 130:
  process_buffer_error(q, count);
  q->first_to_check = add_buf(q->first_to_check, count);
  atomic_sub(count, &q->nr_buf_used);
  if (q->irq_ptr->perf_stat_enabled)
   account_sbals_error(q, count);
  break;
 case 132:
 case 129:
 case 131:
  if (q->irq_ptr->perf_stat_enabled)
   q->q_stats.nr_sbal_nop++;
  DBF_DEV_EVENT(DBF_INFO, q->irq_ptr, "in nop");
  break;
 default:
  BUG();
 }
out:
 return q->first_to_check;
}
