
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Channels; long bchannel_trace_mask; } ;
typedef TYPE_1__ diva_strace_context_t ;


 int ScheduleNextTraceRequest (TYPE_1__*) ;

__attribute__((used)) static int SuperTraceSetBChannel (void* hLib, int Channel, int on) {
 diva_strace_context_t* pLib = (diva_strace_context_t*)hLib;

 if ((Channel < 1) || (Channel > pLib->Channels)) {
  return (-1);
 }
 Channel--;

 if (on) {
  pLib->bchannel_trace_mask |= (1L << Channel);
 } else {
  pLib->bchannel_trace_mask &= ~(1L << Channel);
 }

 return (ScheduleNextTraceRequest (pLib));
}
