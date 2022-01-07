
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int word ;
typedef TYPE_2__* pDbgHandle ;
typedef void* dword ;
typedef int diva_os_spin_lock_magic_t ;
struct TYPE_11__ {int data_length; scalar_t__ di_cpu; scalar_t__ drv_id; int dli; int facility; void* time_usec; void* time_sec; scalar_t__ sequence; } ;
typedef TYPE_3__ diva_dbg_entry_head_t ;
typedef int byte ;
struct TYPE_12__ {int * pmem; TYPE_1__* pIdiLib; TYPE_2__* hDbg; } ;
struct TYPE_10__ {int id; scalar_t__ Version; char* drvName; int * next; scalar_t__ Registered; int * dbg_old; int * dbg_irq; int * dbg_prt; int * dbg_end; scalar_t__ dbgMask; } ;
struct TYPE_9__ {int hLib; int (* DivaSTraceLibraryFinit ) (int ) ;} ;


 int ARRAY_SIZE (TYPE_6__*) ;
 int DLI_REG ;
 int MSG_TYPE_STRING ;
 TYPE_6__* clients ;
 int dbg_adapter_lock ;
 int dbg_q_lock ;
 int dbg_queue ;
 int dbg_sequence ;
 int diva_maint_wakeup_read () ;
 int diva_os_enter_spin_lock (int *,int *,char*) ;
 int diva_os_free (int ,int *) ;
 int diva_os_get_time (void**,void**) ;
 int diva_os_leave_spin_lock (int *,int *,char*) ;
 int memcpy (TYPE_3__*,char*,int) ;
 scalar_t__ queueAllocMsg (int ,int ) ;
 int queueCompleteMsg (TYPE_3__*) ;
 int queueFreeMsg (int ) ;
 scalar_t__ queuePeekMsg (int ,int *) ;
 int sprintf (char*,char*,int,char*) ;
 int stub1 (int ) ;

__attribute__((used)) static void DI_deregister (pDbgHandle hDbg) {
  diva_os_spin_lock_magic_t old_irql, old_irql1;
  dword sec, usec;
  int i;
  word size;
  byte* pmem = ((void*)0);

  diva_os_get_time (&sec, &usec);

  diva_os_enter_spin_lock (&dbg_adapter_lock, &old_irql1, "read");
  diva_os_enter_spin_lock (&dbg_q_lock, &old_irql, "read");

  for (i = 1; i < ARRAY_SIZE(clients); i++) {
    if (clients[i].hDbg == hDbg) {
      diva_dbg_entry_head_t* pmsg;
      char tmp[256];
      int len;

      clients[i].hDbg = ((void*)0);

      hDbg->id = -1;
      hDbg->dbgMask = 0;
      hDbg->dbg_end = ((void*)0);
      hDbg->dbg_prt = ((void*)0);
      hDbg->dbg_irq = ((void*)0);
      if (hDbg->Version > 0)
        hDbg->dbg_old = ((void*)0);
      hDbg->Registered = 0;
      hDbg->next = ((void*)0);

      if (clients[i].pIdiLib) {
        (*(clients[i].pIdiLib->DivaSTraceLibraryFinit))(clients[i].pIdiLib->hLib);
        clients[i].pIdiLib = ((void*)0);

        pmem = clients[i].pmem;
        clients[i].pmem = ((void*)0);
      }




      len = sprintf (tmp, "DIMAINT - drv # %d = '%s' de-registered",
                     i, hDbg->drvName);

      while (!(pmsg = (diva_dbg_entry_head_t*)queueAllocMsg (dbg_queue,
                                        (word)(len+1+sizeof(*pmsg))))) {
        if ((pmsg = (diva_dbg_entry_head_t*)queuePeekMsg (dbg_queue, &size))) {
          queueFreeMsg (dbg_queue);
        } else {
          break;
        }
      }

      if (pmsg) {
        pmsg->sequence = dbg_sequence++;
        pmsg->time_sec = sec;
        pmsg->time_usec = usec;
        pmsg->facility = MSG_TYPE_STRING;
        pmsg->dli = DLI_REG;
        pmsg->drv_id = 0;
        pmsg->di_cpu = 0;
        pmsg->data_length = len+1;

        memcpy (&pmsg[1], tmp, len+1);
      queueCompleteMsg (pmsg);
        diva_maint_wakeup_read();
      }

      break;
    }
  }

  diva_os_leave_spin_lock (&dbg_q_lock, &old_irql, "read_ack");
  diva_os_leave_spin_lock (&dbg_adapter_lock, &old_irql1, "read_ack");

  if (pmem) {
    diva_os_free (0, pmem);
  }
}
