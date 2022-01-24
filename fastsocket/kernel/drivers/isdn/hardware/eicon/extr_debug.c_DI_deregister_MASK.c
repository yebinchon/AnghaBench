#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  word ;
typedef  TYPE_2__* pDbgHandle ;
typedef  void* dword ;
typedef  int /*<<< orphan*/  diva_os_spin_lock_magic_t ;
struct TYPE_11__ {int data_length; scalar_t__ di_cpu; scalar_t__ drv_id; int /*<<< orphan*/  dli; int /*<<< orphan*/  facility; void* time_usec; void* time_sec; scalar_t__ sequence; } ;
typedef  TYPE_3__ diva_dbg_entry_head_t ;
typedef  int /*<<< orphan*/  byte ;
struct TYPE_12__ {int /*<<< orphan*/ * pmem; TYPE_1__* pIdiLib; TYPE_2__* hDbg; } ;
struct TYPE_10__ {int id; scalar_t__ Version; char* drvName; int /*<<< orphan*/ * next; scalar_t__ Registered; int /*<<< orphan*/ * dbg_old; int /*<<< orphan*/ * dbg_irq; int /*<<< orphan*/ * dbg_prt; int /*<<< orphan*/ * dbg_end; scalar_t__ dbgMask; } ;
struct TYPE_9__ {int /*<<< orphan*/  hLib; int /*<<< orphan*/  (* DivaSTraceLibraryFinit ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int FUNC0 (TYPE_6__*) ; 
 int /*<<< orphan*/  DLI_REG ; 
 int /*<<< orphan*/  MSG_TYPE_STRING ; 
 TYPE_6__* clients ; 
 int /*<<< orphan*/  dbg_adapter_lock ; 
 int /*<<< orphan*/  dbg_q_lock ; 
 int /*<<< orphan*/  dbg_queue ; 
 int /*<<< orphan*/  dbg_sequence ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (void**,void**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,char*,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC11 (char*,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13 (pDbgHandle hDbg) {
  diva_os_spin_lock_magic_t old_irql, old_irql1;
  dword sec, usec;
  int i;
  word size;
  byte* pmem = NULL;

  FUNC4 (&sec, &usec);

  FUNC2 (&dbg_adapter_lock, &old_irql1, "read");
  FUNC2 (&dbg_q_lock, &old_irql, "read");

  for (i = 1; i < FUNC0(clients); i++) {
    if (clients[i].hDbg == hDbg) {
      diva_dbg_entry_head_t* pmsg;
      char tmp[256];
      int len;

      clients[i].hDbg = NULL;

      hDbg->id       = -1;
      hDbg->dbgMask  = 0;
      hDbg->dbg_end  = NULL;
      hDbg->dbg_prt  = NULL;
      hDbg->dbg_irq  = NULL;
      if (hDbg->Version > 0)
        hDbg->dbg_old = NULL;
      hDbg->Registered = 0;
      hDbg->next     = NULL;

      if (clients[i].pIdiLib) {
        (*(clients[i].pIdiLib->DivaSTraceLibraryFinit))(clients[i].pIdiLib->hLib);
        clients[i].pIdiLib = NULL;

        pmem = clients[i].pmem;
        clients[i].pmem = NULL;
      }

      /*
        Log driver register, MAINT driver ID is '0'
        */
      len = FUNC11 (tmp, "DIMAINT - drv # %d = '%s' de-registered",
                     i, hDbg->drvName);

      while (!(pmsg = (diva_dbg_entry_head_t*)FUNC7 (dbg_queue,
                                        (word)(len+1+sizeof(*pmsg))))) {
        if ((pmsg = (diva_dbg_entry_head_t*)FUNC10 (dbg_queue, &size))) {
          FUNC9 (dbg_queue);
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

        FUNC6 (&pmsg[1], tmp, len+1);
  		  FUNC8 (pmsg);
        FUNC1();
      }

      break;
    }
  }

  FUNC5 (&dbg_q_lock, &old_irql, "read_ack");
  FUNC5 (&dbg_adapter_lock, &old_irql1, "read_ack");

  if (pmem) {
    FUNC3 (0, pmem);
  }
}