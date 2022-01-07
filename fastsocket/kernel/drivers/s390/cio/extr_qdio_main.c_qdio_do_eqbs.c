
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qdio_q {int nr; TYPE_1__* irq_ptr; int first_to_kick; int (* handler ) (int ,int ,int,int ,int,int ) ;int is_input_q; } ;
struct TYPE_2__ {int int_parm; int cdev; int sch_token; scalar_t__ nr_input_qs; } ;


 int BUG_ON (int) ;
 int DBF_DEV_EVENT (int ,TYPE_1__*,char*,int) ;
 int DBF_ERROR (char*,int,...) ;
 int DBF_WARN ;
 int QDIO_ERROR_ACTIVATE_CHECK_CONDITION ;
 int SCH_NO (struct qdio_q*) ;
 unsigned int do_eqbs (int ,unsigned char*,int,int*,int*,int) ;
 int eqbs ;
 int eqbs_partial ;
 int qdio_check_ccq (struct qdio_q*,unsigned int) ;
 int qperf_inc (struct qdio_q*,int ) ;
 int stub1 (int ,int ,int,int ,int,int ) ;

__attribute__((used)) static int qdio_do_eqbs(struct qdio_q *q, unsigned char *state,
   int start, int count, int auto_ack)
{
 int rc, tmp_count = count, tmp_start = start, nr = q->nr, retried = 0;
 unsigned int ccq = 0;

 BUG_ON(!q->irq_ptr->sch_token);
 qperf_inc(q, eqbs);

 if (!q->is_input_q)
  nr += q->irq_ptr->nr_input_qs;
again:
 ccq = do_eqbs(q->irq_ptr->sch_token, state, nr, &tmp_start, &tmp_count,
        auto_ack);
 rc = qdio_check_ccq(q, ccq);
 if (!rc)
  return count - tmp_count;

 if (rc == 1) {
  DBF_DEV_EVENT(DBF_WARN, q->irq_ptr, "EQBS again:%2d", ccq);
  goto again;
 }

 if (rc == 2) {
  BUG_ON(tmp_count == count);
  qperf_inc(q, eqbs_partial);
  DBF_DEV_EVENT(DBF_WARN, q->irq_ptr, "EQBS part:%02x",
   tmp_count);




  if (!retried++)
   goto again;
  else
   return count - tmp_count;
 }

 DBF_ERROR("%4x EQBS ERROR", SCH_NO(q));
 DBF_ERROR("%3d%3d%2d", count, tmp_count, nr);
 q->handler(q->irq_ptr->cdev, QDIO_ERROR_ACTIVATE_CHECK_CONDITION,
     q->nr, q->first_to_kick, count, q->irq_ptr->int_parm);
 return 0;
}
