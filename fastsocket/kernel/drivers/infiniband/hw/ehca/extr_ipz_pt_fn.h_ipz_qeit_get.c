
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipz_queue {int current_q_offset; } ;


 void* ipz_qeit_calc (struct ipz_queue*,int ) ;

__attribute__((used)) static inline void *ipz_qeit_get(struct ipz_queue *queue)
{
 return ipz_qeit_calc(queue, queue->current_q_offset);
}
