
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int d1_ifc_stats; } ;
typedef TYPE_1__ diva_strace_context_t ;


 int ScheduleNextTraceRequest (TYPE_1__*) ;

__attribute__((used)) static int SuperTraceGetDLayer1Statistics (void* hLib) {
 diva_strace_context_t* pLib = (diva_strace_context_t*)hLib;
 pLib->d1_ifc_stats = 1;
 return (ScheduleNextTraceRequest (pLib));
}
