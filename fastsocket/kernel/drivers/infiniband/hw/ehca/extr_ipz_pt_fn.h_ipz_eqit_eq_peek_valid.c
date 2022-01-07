
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ipz_queue {int toggle_state; } ;


 void* ipz_qeit_get (struct ipz_queue*) ;

__attribute__((used)) static inline void *ipz_eqit_eq_peek_valid(struct ipz_queue *queue)
{
 void *ret = ipz_qeit_get(queue);
 u32 qe = *(u8 *)ret;
 if ((qe >> 7) != (queue->toggle_state & 1))
  return ((void*)0);
 return ret;
}
