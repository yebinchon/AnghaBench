
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw_queue {int current_q_offset; } ;


 void* hw_qeit_calc (struct hw_queue*,int ) ;

__attribute__((used)) static inline void *hw_qeit_get(struct hw_queue *queue)
{
 return hw_qeit_calc(queue, queue->current_q_offset);
}
