#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_8__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  word ;
typedef  void* dword ;
typedef  int /*<<< orphan*/  diva_os_spin_lock_magic_t ;
struct TYPE_11__ {int data_length; scalar_t__ di_cpu; scalar_t__ drv_id; int /*<<< orphan*/  dli; int /*<<< orphan*/  facility; void* time_usec; void* time_sec; scalar_t__ sequence; } ;
typedef  TYPE_2__ diva_dbg_entry_head_t ;
typedef  int /*<<< orphan*/  byte ;
struct TYPE_13__ {char* drvName; } ;
struct TYPE_14__ {int dma_handle; TYPE_5__ Dbg; int /*<<< orphan*/ * request; scalar_t__ request_pending; int /*<<< orphan*/ * hDbg; int /*<<< orphan*/ * pmem; TYPE_1__* pIdiLib; } ;
struct TYPE_12__ {int /*<<< orphan*/ * request; } ;
struct TYPE_10__ {int /*<<< orphan*/  hLib; int /*<<< orphan*/  (* DivaSTraceLibraryFinit ) (int /*<<< orphan*/ ) ;} ;
typedef  TYPE_3__ DESCRIPTOR ;

/* Variables and functions */
 int FUNC0 (TYPE_8__*) ; 
 int /*<<< orphan*/  DLI_REG ; 
 int /*<<< orphan*/  MSG_TYPE_STRING ; 
 TYPE_8__* clients ; 
 int /*<<< orphan*/  dbg_adapter_lock ; 
 int /*<<< orphan*/  dbg_q_lock ; 
 int /*<<< orphan*/  dbg_queue ; 
 int /*<<< orphan*/  dbg_sequence ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (void**,void**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,int,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC13 (char*,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

void FUNC15 (const DESCRIPTOR* d) {
  diva_os_spin_lock_magic_t old_irql, old_irql1;
  dword sec, usec;
  int i;
  word size;
  byte* pmem = NULL;

  FUNC5 (&sec, &usec);

  FUNC3 (&dbg_adapter_lock, &old_irql1, "read");
  FUNC3 (&dbg_q_lock, &old_irql, "read");

  for (i = 1; i < FUNC0(clients); i++) {
    if (clients[i].hDbg && (clients[i].request == d->request)) {
      diva_dbg_entry_head_t* pmsg;
      char tmp[256];
      int len;

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

      /*
        Log driver register, MAINT driver ID is '0'
        */
      len = FUNC13 (tmp, "DIMAINT - drv # %d = '%s' de-registered",
                     i, clients[i].Dbg.drvName);

      FUNC8 (&clients[i].Dbg, 0x00, sizeof(clients[i].Dbg));

      while (!(pmsg = (diva_dbg_entry_head_t*)FUNC9 (dbg_queue,
                                        (word)(len+1+sizeof(*pmsg))))) {
        if ((pmsg = (diva_dbg_entry_head_t*)FUNC12 (dbg_queue, &size))) {
          FUNC11 (dbg_queue);
        } else {
          break;
        }
      }

      if (pmsg) {
        pmsg->sequence    = dbg_sequence++;
        pmsg->time_sec    = sec;
        pmsg->time_usec   = usec;
        pmsg->facility    = MSG_TYPE_STRING;
        pmsg->dli         = DLI_REG;
        pmsg->drv_id      = 0; /* id 0 - DIMAINT */
        pmsg->di_cpu      = 0;
        pmsg->data_length = len+1;

        FUNC7 (&pmsg[1], tmp, len+1);
  		  FUNC10 (pmsg);
        FUNC2();
      }

      break;
    }
  }

  FUNC6 (&dbg_q_lock, &old_irql, "read_ack");
  FUNC6 (&dbg_adapter_lock, &old_irql1, "read_ack");

  if (pmem) {
    FUNC4 (0, pmem);
  }
}