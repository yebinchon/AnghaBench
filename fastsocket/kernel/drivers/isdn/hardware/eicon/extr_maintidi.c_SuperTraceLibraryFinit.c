
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ hAdapter; } ;
typedef TYPE_1__ diva_strace_context_t ;


 int SuperTraceCloseAdapter (scalar_t__) ;

__attribute__((used)) static int SuperTraceLibraryFinit (void* hLib) {
 diva_strace_context_t* pLib = (diva_strace_context_t*)hLib;
 if (pLib) {
  if (pLib->hAdapter) {
   SuperTraceCloseAdapter (pLib->hAdapter);
  }
  return (0);
 }
 return (-1);
}
