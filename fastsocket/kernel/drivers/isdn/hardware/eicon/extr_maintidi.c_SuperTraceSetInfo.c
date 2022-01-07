
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int trace_event_mask; } ;
typedef TYPE_1__ diva_strace_context_t ;


 int ScheduleNextTraceRequest (TYPE_1__*) ;
 int TM_STRING ;

__attribute__((used)) static int SuperTraceSetInfo (void* hLib, int on) {
 diva_strace_context_t* pLib = (diva_strace_context_t*)hLib;

 if (on) {
  pLib->trace_event_mask |= TM_STRING;
 } else {
  pLib->trace_event_mask &= ~TM_STRING;
 }

 return (ScheduleNextTraceRequest (pLib));
}
