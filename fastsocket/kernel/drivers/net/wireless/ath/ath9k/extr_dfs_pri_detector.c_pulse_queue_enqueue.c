
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u64 ;
struct pulse_elem {int head; void* ts; } ;
struct pri_detector {scalar_t__ count; scalar_t__ max_count; void* last_ts; int pulses; } ;


 int DFS_POOL_STAT_INC (int ) ;
 int GFP_ATOMIC ;
 int INIT_LIST_HEAD (int *) ;
 struct pulse_elem* kmalloc (int,int ) ;
 int list_add (int *,int *) ;
 struct pulse_elem* pool_get_pulse_elem () ;
 int pulse_alloc_error ;
 int pulse_allocated ;
 int pulse_queue_check_window (struct pri_detector*) ;
 int pulse_queue_dequeue (struct pri_detector*) ;
 int pulse_used ;

__attribute__((used)) static bool pulse_queue_enqueue(struct pri_detector *pde, u64 ts)
{
 struct pulse_elem *p = pool_get_pulse_elem();
 if (p == ((void*)0)) {
  p = kmalloc(sizeof(*p), GFP_ATOMIC);
  if (p == ((void*)0)) {
   DFS_POOL_STAT_INC(pulse_alloc_error);
   return 0;
  }
  DFS_POOL_STAT_INC(pulse_allocated);
  DFS_POOL_STAT_INC(pulse_used);
 }
 INIT_LIST_HEAD(&p->head);
 p->ts = ts;
 list_add(&p->head, &pde->pulses);
 pde->count++;
 pde->last_ts = ts;
 pulse_queue_check_window(pde);
 if (pde->count >= pde->max_count)
  pulse_queue_dequeue(pde);
 return 1;
}
