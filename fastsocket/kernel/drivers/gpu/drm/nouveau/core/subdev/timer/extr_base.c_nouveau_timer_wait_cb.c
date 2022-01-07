
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct nouveau_timer {scalar_t__ (* read ) (struct nouveau_timer*) ;} ;


 struct nouveau_timer* nouveau_timer (void*) ;
 scalar_t__ stub1 (struct nouveau_timer*) ;
 scalar_t__ stub2 (struct nouveau_timer*) ;

bool
nouveau_timer_wait_cb(void *obj, u64 nsec, bool (*func)(void *), void *data)
{
 struct nouveau_timer *ptimer = nouveau_timer(obj);
 u64 time0;

 time0 = ptimer->read(ptimer);
 do {
  if (func(data) == 1)
   return 1;
 } while (ptimer->read(ptimer) - time0 < nsec);

 return 0;
}
