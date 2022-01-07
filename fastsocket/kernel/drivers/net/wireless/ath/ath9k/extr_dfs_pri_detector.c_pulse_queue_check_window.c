
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct pulse_elem {scalar_t__ ts; } ;
struct pri_detector {int count; scalar_t__ last_ts; scalar_t__ window_size; } ;


 int pulse_queue_dequeue (struct pri_detector*) ;
 struct pulse_elem* pulse_queue_get_tail (struct pri_detector*) ;

__attribute__((used)) static void pulse_queue_check_window(struct pri_detector *pde)
{
 u64 min_valid_ts;
 struct pulse_elem *p;


 if (pde->count < 2)
  return;

 if (pde->last_ts <= pde->window_size)
  return;

 min_valid_ts = pde->last_ts - pde->window_size;
 while ((p = pulse_queue_get_tail(pde)) != ((void*)0)) {
  if (p->ts >= min_valid_ts)
   return;
  pulse_queue_dequeue(pde);
 }
}
