
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int ack_start; scalar_t__ ack_count; scalar_t__ polling; } ;
struct TYPE_3__ {TYPE_2__ in; } ;
struct qdio_q {TYPE_1__ u; } ;


 int SLSB_P_INPUT_NOT_INIT ;
 scalar_t__ is_qebsm (struct qdio_q*) ;
 int qperf_inc (struct qdio_q*,int ) ;
 int set_buf_state (struct qdio_q*,int ,int ) ;
 int set_buf_states (struct qdio_q*,int ,int ,scalar_t__) ;
 int stop_polling ;

__attribute__((used)) static inline void qdio_stop_polling(struct qdio_q *q)
{
 if (!q->u.in.polling)
  return;

 q->u.in.polling = 0;
 qperf_inc(q, stop_polling);


 if (is_qebsm(q)) {
  set_buf_states(q, q->u.in.ack_start, SLSB_P_INPUT_NOT_INIT,
          q->u.in.ack_count);
  q->u.in.ack_count = 0;
 } else
  set_buf_state(q, q->u.in.ack_start, SLSB_P_INPUT_NOT_INIT);
}
