
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Id; } ;
struct TYPE_5__ {int removal_state; TYPE_1__ e; } ;
typedef TYPE_2__ diva_strace_context_t ;


 int ScheduleNextTraceRequest (TYPE_2__*) ;

__attribute__((used)) static int DivaSTraceLibraryStop (void* hLib) {
  diva_strace_context_t* pLib = (diva_strace_context_t*)hLib;

  if (!pLib->e.Id) {
    return (1);
  }

  switch (pLib->removal_state) {
    case 0:
      pLib->removal_state = 1;
      ScheduleNextTraceRequest(pLib);
      break;

    case 3:
      return (1);
  }

  return (0);
}
