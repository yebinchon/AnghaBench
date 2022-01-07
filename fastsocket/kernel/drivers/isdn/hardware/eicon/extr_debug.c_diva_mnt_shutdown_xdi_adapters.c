
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int diva_os_spin_lock_magic_t ;
typedef int byte ;
struct TYPE_5__ {int dma_handle; int (* request ) (int *) ;TYPE_1__* pIdiLib; scalar_t__ request_pending; int * hDbg; int * pmem; } ;
struct TYPE_4__ {int (* DivaSTraceLibraryStop ) (TYPE_1__*) ;int hLib; scalar_t__ (* DivaSTraceGetHandle ) (int ) ;int (* DivaSTraceLibraryFinit ) (int ) ;} ;
typedef int ENTITY ;


 int ARRAY_SIZE (TYPE_2__*) ;
 TYPE_2__* clients ;
 int dbg_adapter_lock ;
 int dbg_q_lock ;
 int diva_free_dma_descriptor (int (*) (int *),int) ;
 int diva_os_enter_spin_lock (int *,int *,char*) ;
 int diva_os_free (int ,int *) ;
 int diva_os_leave_spin_lock (int *,int *,char*) ;
 int stub1 (TYPE_1__*) ;
 int stub2 (int ) ;
 int stub3 (int *) ;
 scalar_t__ stub4 (int ) ;

int diva_mnt_shutdown_xdi_adapters (void) {
  diva_os_spin_lock_magic_t old_irql, old_irql1;
  int i, fret = 0;
  byte * pmem;


  for (i = 1; i < ARRAY_SIZE(clients); i++) {
    pmem = ((void*)0);

    diva_os_enter_spin_lock (&dbg_adapter_lock, &old_irql1, "unload");
    diva_os_enter_spin_lock (&dbg_q_lock, &old_irql, "unload");

    if (clients[i].hDbg && clients[i].pIdiLib && clients[i].request) {
      if ((*(clients[i].pIdiLib->DivaSTraceLibraryStop))(clients[i].pIdiLib) == 1) {



        if (clients[i].pIdiLib) {
          (*(clients[i].pIdiLib->DivaSTraceLibraryFinit))(clients[i].pIdiLib->hLib);
          clients[i].pIdiLib = ((void*)0);

          pmem = clients[i].pmem;
          clients[i].pmem = ((void*)0);
        }
        clients[i].hDbg = ((void*)0);
        clients[i].request_pending = 0;

        if (clients[i].dma_handle >= 0) {



          diva_free_dma_descriptor (clients[i].request, clients[i].dma_handle);
          clients[i].dma_handle = -1;
    }
        clients[i].request = ((void*)0);
      } else {
        fret = -1;
      }
    }

    diva_os_leave_spin_lock (&dbg_q_lock, &old_irql, "unload");
    if (clients[i].hDbg && clients[i].pIdiLib && clients[i].request && clients[i].request_pending) {
      clients[i].request_pending = 0;
      (*(clients[i].request))((ENTITY*)(*(clients[i].pIdiLib->DivaSTraceGetHandle))(clients[i].pIdiLib->hLib));
      if (clients[i].dma_handle >= 0) {
        diva_free_dma_descriptor (clients[i].request, clients[i].dma_handle);
        clients[i].dma_handle = -1;
      }
    }
    diva_os_leave_spin_lock (&dbg_adapter_lock, &old_irql1, "unload");

    if (pmem) {
      diva_os_free (0, pmem);
    }
  }

  return (fret);
}
