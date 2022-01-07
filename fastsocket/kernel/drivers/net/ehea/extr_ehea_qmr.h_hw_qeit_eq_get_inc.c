
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct hw_queue {scalar_t__ queue_length; scalar_t__ qe_size; scalar_t__ current_q_offset; int toggle_state; } ;


 void* hw_qeit_get (struct hw_queue*) ;

__attribute__((used)) static inline void *hw_qeit_eq_get_inc(struct hw_queue *queue)
{
 u64 last_entry_in_q = queue->queue_length - queue->qe_size;
 void *retvalue;

 retvalue = hw_qeit_get(queue);
 queue->current_q_offset += queue->qe_size;
 if (queue->current_q_offset > last_entry_in_q) {
  queue->current_q_offset = 0;
  queue->toggle_state = (~queue->toggle_state) & 1;
 }
 return retvalue;
}
