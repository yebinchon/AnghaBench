
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int buffer; int hAdapter; } ;
typedef TYPE_1__ diva_strace_context_t ;


 int SuperTraceASSIGN (int ,int ) ;

__attribute__((used)) static int DivaSTraceLibraryStart (void* hLib) {
  diva_strace_context_t* pLib = (diva_strace_context_t*)hLib;

  return (SuperTraceASSIGN (pLib->hAdapter, pLib->buffer));
}
