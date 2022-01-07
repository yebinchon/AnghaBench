
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alloc_parms {int used_wait_atomic; int number; int done; int wait_atomic; } ;
typedef int HvLpIndex ;


 int HvLpEvent_Type_VirtualIo ;
 scalar_t__ SYSTEM_RUNNING ;
 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,int) ;
 int init_completion (int *) ;
 int mb () ;
 int mf_allocate_lp_events (int ,int ,int,int,int *,struct alloc_parms*) ;
 scalar_t__ system_state ;
 int viopath_donealloc ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int allocateEvents(HvLpIndex remoteLp, int numEvents)
{
 struct alloc_parms parms;

 if (system_state != SYSTEM_RUNNING) {
  parms.used_wait_atomic = 1;
  atomic_set(&parms.wait_atomic, 1);
 } else {
  parms.used_wait_atomic = 0;
  init_completion(&parms.done);
 }
 mf_allocate_lp_events(remoteLp, HvLpEvent_Type_VirtualIo, 250,
       numEvents, &viopath_donealloc, &parms);
 if (system_state != SYSTEM_RUNNING) {
  while (atomic_read(&parms.wait_atomic))
   mb();
 } else
  wait_for_completion(&parms.done);
 return parms.number;
}
