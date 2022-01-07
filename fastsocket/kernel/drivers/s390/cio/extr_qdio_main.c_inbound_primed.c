
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int polling; int ack_count; int ack_start; } ;
struct TYPE_4__ {TYPE_1__ in; } ;
struct qdio_q {int first_to_check; TYPE_2__ u; int irq_ptr; } ;


 int DBF_DEV_EVENT (int ,int ,char*,int) ;
 int DBF_INFO ;
 int SLSB_P_INPUT_ACK ;
 int SLSB_P_INPUT_NOT_INIT ;
 int add_buf (int,int) ;
 scalar_t__ is_qebsm (struct qdio_q*) ;
 int set_buf_state (struct qdio_q*,int,int ) ;
 int set_buf_states (struct qdio_q*,int,int ,int) ;

__attribute__((used)) static inline void inbound_primed(struct qdio_q *q, int count)
{
 int new;

 DBF_DEV_EVENT(DBF_INFO, q->irq_ptr, "in prim: %02x", count);


 if (is_qebsm(q)) {
  if (!q->u.in.polling) {
   q->u.in.polling = 1;
   q->u.in.ack_count = count;
   q->u.in.ack_start = q->first_to_check;
   return;
  }


  set_buf_states(q, q->u.in.ack_start, SLSB_P_INPUT_NOT_INIT,
          q->u.in.ack_count);
  q->u.in.ack_count = count;
  q->u.in.ack_start = q->first_to_check;
  return;
 }





 new = add_buf(q->first_to_check, count - 1);
 if (q->u.in.polling) {

  set_buf_state(q, new, SLSB_P_INPUT_ACK);
  set_buf_state(q, q->u.in.ack_start, SLSB_P_INPUT_NOT_INIT);
 } else {
  q->u.in.polling = 1;
  set_buf_state(q, new, SLSB_P_INPUT_ACK);
 }

 q->u.in.ack_start = new;
 count--;
 if (!count)
  return;

 set_buf_states(q, q->first_to_check, SLSB_P_INPUT_NOT_INIT, count);
}
