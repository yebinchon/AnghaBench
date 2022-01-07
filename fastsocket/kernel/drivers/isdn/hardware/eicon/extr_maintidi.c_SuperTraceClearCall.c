
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Channels; long clear_call_command; } ;
typedef TYPE_1__ diva_strace_context_t ;


 int ScheduleNextTraceRequest (TYPE_1__*) ;

__attribute__((used)) static int SuperTraceClearCall (void* hLib, int Channel) {
 diva_strace_context_t* pLib = (diva_strace_context_t*)hLib;

 if ((Channel < 1) || (Channel > pLib->Channels)) {
  return (-1);
 }
 Channel--;

 pLib->clear_call_command |= (1L << Channel);

 return (ScheduleNextTraceRequest (pLib));
}
