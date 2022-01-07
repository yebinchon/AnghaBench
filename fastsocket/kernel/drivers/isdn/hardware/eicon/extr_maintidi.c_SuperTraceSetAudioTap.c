
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Channels; long audio_tap_mask; int trace_event_mask; } ;
typedef TYPE_1__ diva_strace_context_t ;


 int ScheduleNextTraceRequest (TYPE_1__*) ;
 int TM_M_DATA ;

__attribute__((used)) static int SuperTraceSetAudioTap (void* hLib, int Channel, int on) {
 diva_strace_context_t* pLib = (diva_strace_context_t*)hLib;

 if ((Channel < 1) || (Channel > pLib->Channels)) {
  return (-1);
 }
 Channel--;

 if (on) {
  pLib->audio_tap_mask |= (1L << Channel);
 } else {
  pLib->audio_tap_mask &= ~(1L << Channel);
 }





  if (pLib->audio_tap_mask) {
    pLib->trace_event_mask |= TM_M_DATA;
  } else {
    pLib->trace_event_mask &= ~TM_M_DATA;
  }

 return (ScheduleNextTraceRequest (pLib));
}
