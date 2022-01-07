
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipz_queue {scalar_t__ current_q_offset; } ;


 void* ipz_qeit_get (struct ipz_queue*) ;

__attribute__((used)) static inline void *ipz_qeit_reset(struct ipz_queue *queue)
{
 queue->current_q_offset = 0;
 return ipz_qeit_get(queue);
}
