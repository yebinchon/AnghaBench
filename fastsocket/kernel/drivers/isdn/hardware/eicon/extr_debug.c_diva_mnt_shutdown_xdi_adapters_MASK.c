#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  diva_os_spin_lock_magic_t ;
typedef  int /*<<< orphan*/  byte ;
struct TYPE_5__ {int dma_handle; int /*<<< orphan*/  (* request ) (int /*<<< orphan*/ *) ;TYPE_1__* pIdiLib; scalar_t__ request_pending; int /*<<< orphan*/ * hDbg; int /*<<< orphan*/ * pmem; } ;
struct TYPE_4__ {int (* DivaSTraceLibraryStop ) (TYPE_1__*) ;int /*<<< orphan*/  hLib; scalar_t__ (* DivaSTraceGetHandle ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* DivaSTraceLibraryFinit ) (int /*<<< orphan*/ ) ;} ;
typedef  int /*<<< orphan*/  ENTITY ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
 TYPE_2__* clients ; 
 int /*<<< orphan*/  dbg_adapter_lock ; 
 int /*<<< orphan*/  dbg_q_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  (*) (int /*<<< orphan*/ *),int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

int FUNC9 (void) {
  diva_os_spin_lock_magic_t old_irql, old_irql1;
  int i, fret = 0;
  byte * pmem;


  for (i = 1; i < FUNC0(clients); i++) {
    pmem = NULL;

    FUNC2 (&dbg_adapter_lock, &old_irql1, "unload");
    FUNC2 (&dbg_q_lock, &old_irql, "unload");

    if (clients[i].hDbg && clients[i].pIdiLib && clients[i].request) {
      if ((*(clients[i].pIdiLib->DivaSTraceLibraryStop))(clients[i].pIdiLib) == 1) {
        /*
          Adapter removal complete
          */
        if (clients[i].pIdiLib) {
          (*(clients[i].pIdiLib->DivaSTraceLibraryFinit))(clients[i].pIdiLib->hLib);
          clients[i].pIdiLib = NULL;

          pmem = clients[i].pmem;
          clients[i].pmem = NULL;
        }
        clients[i].hDbg    = NULL;
        clients[i].request_pending = 0;

        if (clients[i].dma_handle >= 0) {
          /*
            Free DMA handle
            */
          FUNC1 (clients[i].request, clients[i].dma_handle);
          clients[i].dma_handle = -1;
				}
        clients[i].request = NULL;
      } else {
        fret = -1;
      }
    }

    FUNC4 (&dbg_q_lock, &old_irql, "unload");
    if (clients[i].hDbg && clients[i].pIdiLib && clients[i].request && clients[i].request_pending) {
      clients[i].request_pending = 0;
      (*(clients[i].request))((ENTITY*)(*(clients[i].pIdiLib->DivaSTraceGetHandle))(clients[i].pIdiLib->hLib));
      if (clients[i].dma_handle >= 0) {
        FUNC1 (clients[i].request, clients[i].dma_handle);
        clients[i].dma_handle = -1;
      }
    }
    FUNC4 (&dbg_adapter_lock, &old_irql1, "unload");

    if (pmem) {
      FUNC3 (0, pmem);
    }
  }

  return (fret);
}