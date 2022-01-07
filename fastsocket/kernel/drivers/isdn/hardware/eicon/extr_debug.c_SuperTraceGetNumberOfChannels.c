
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int channels; } ;
typedef TYPE_1__ diva_maint_client_t ;



int SuperTraceGetNumberOfChannels (void* AdapterHandle) {
  if (AdapterHandle) {
    diva_maint_client_t* pC = (diva_maint_client_t*)AdapterHandle;

    return (pC->channels);
  }

  return (0);
}
