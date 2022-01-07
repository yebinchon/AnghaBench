
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int word ;
typedef TYPE_1__* pDbgHandle ;
typedef void* dword ;
typedef int diva_os_spin_lock_magic_t ;
struct TYPE_9__ {int data_length; scalar_t__ di_cpu; scalar_t__ drv_id; int dli; int facility; void* time_usec; void* time_sec; scalar_t__ sequence; } ;
typedef TYPE_2__ diva_dbg_entry_head_t ;
typedef scalar_t__ byte ;
struct TYPE_10__ {int id; } ;
typedef TYPE_3__ _OldDbgHandle_ ;
struct TYPE_11__ {int last_dbgMask; int dbgMask; int drvName; void* usec; void* sec; TYPE_1__* hDbg; } ;
struct TYPE_8__ {scalar_t__ id; scalar_t__ Registered; char* drvName; scalar_t__ Version; struct TYPE_8__* next; int dbg_old; void* dbg_irq; int dbg_ev; void* dbg_prt; int dbg_end; int dbgMask; } ;


 int ARRAY_SIZE (TYPE_6__*) ;
 scalar_t__ DBG_HANDLE_REG_NEW ;
 scalar_t__ DBG_MAGIC ;
 int DI_deregister ;
 void* DI_format_locked ;
 int DI_format_old ;
 int DLI_REG ;
 int DiProcessEventLog ;
 int MSG_TYPE_STRING ;
 TYPE_6__* clients ;
 int dbg_q_lock ;
 int dbg_queue ;
 int dbg_sequence ;
 int diva_maint_wakeup_read () ;
 int diva_os_enter_spin_lock (int *,int *,char*) ;
 int diva_os_get_time (void**,void**) ;
 int diva_os_leave_spin_lock (int *,int *,char*) ;
 int memcpy (TYPE_2__*,char*,int) ;
 scalar_t__ queueAllocMsg (int ,int ) ;
 int queueCompleteMsg (TYPE_2__*) ;
 int queueFreeMsg (int ) ;
 scalar_t__ queuePeekMsg (int ,int *) ;
 int sprintf (char*,char*,int,char*) ;
 int strcmp (int ,char*) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static void DI_register (void *arg) {
  diva_os_spin_lock_magic_t old_irql;
  dword sec, usec;
  pDbgHandle hDbg ;
  int id, free_id = -1, best_id = 0;

  diva_os_get_time (&sec, &usec);

 hDbg = (pDbgHandle)arg ;



  if ((hDbg == ((void*)0)) ||
      ((hDbg->id == 0) && (((_OldDbgHandle_ *)hDbg)->id == -1)) ||
      (hDbg->Registered != 0)) {
  return ;
  }

  diva_os_enter_spin_lock (&dbg_q_lock, &old_irql, "register");

  for (id = 1; id < ARRAY_SIZE(clients); id++) {
    if (clients[id].hDbg == hDbg) {



      diva_os_leave_spin_lock (&dbg_q_lock, &old_irql, "register");
      return;
    }
    if (clients[id].hDbg) {
      continue;
    }
    free_id = id;
    if (!strcmp (clients[id].drvName, hDbg->drvName)) {




      best_id = 1;
      break;
    }
    if (!clients[id].hDbg) {
      break;
    }
  }

  if (free_id != -1) {
    diva_dbg_entry_head_t* pmsg = ((void*)0);
    int len;
    char tmp[256];
    word size;




    clients[free_id].hDbg = hDbg;
    clients[free_id].sec = sec;
    clients[free_id].usec = usec;
    strcpy (clients[free_id].drvName, hDbg->drvName);

    clients[free_id].dbgMask = hDbg->dbgMask;
    if (best_id) {
      hDbg->dbgMask |= clients[free_id].last_dbgMask;
    } else {
      clients[free_id].last_dbgMask = 0;
    }

    hDbg->Registered = DBG_HANDLE_REG_NEW ;
    hDbg->id = (byte)free_id;
    hDbg->dbg_end = DI_deregister;
    hDbg->dbg_prt = DI_format_locked;
    hDbg->dbg_ev = DiProcessEventLog;
    hDbg->dbg_irq = DI_format_locked;
    if (hDbg->Version > 0) {
      hDbg->dbg_old = DI_format_old;
    }
    hDbg->next = (pDbgHandle)DBG_MAGIC;




    len = sprintf (tmp, "DIMAINT - drv # %d = '%s' registered",
                   free_id, hDbg->drvName);

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
  }

  diva_os_leave_spin_lock (&dbg_q_lock, &old_irql, "register");
}
