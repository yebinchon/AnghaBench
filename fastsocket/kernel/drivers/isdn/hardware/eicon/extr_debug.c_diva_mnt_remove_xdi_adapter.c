
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int word ;
typedef void* dword ;
typedef int diva_os_spin_lock_magic_t ;
struct TYPE_11__ {int data_length; scalar_t__ di_cpu; scalar_t__ drv_id; int dli; int facility; void* time_usec; void* time_sec; scalar_t__ sequence; } ;
typedef TYPE_2__ diva_dbg_entry_head_t ;
typedef int byte ;
struct TYPE_13__ {char* drvName; } ;
struct TYPE_14__ {int dma_handle; TYPE_5__ Dbg; int * request; scalar_t__ request_pending; int * hDbg; int * pmem; TYPE_1__* pIdiLib; } ;
struct TYPE_12__ {int * request; } ;
struct TYPE_10__ {int hLib; int (* DivaSTraceLibraryFinit ) (int ) ;} ;
typedef TYPE_3__ DESCRIPTOR ;


 int ARRAY_SIZE (TYPE_8__*) ;
 int DLI_REG ;
 int MSG_TYPE_STRING ;
 TYPE_8__* clients ;
 int dbg_adapter_lock ;
 int dbg_q_lock ;
 int dbg_queue ;
 int dbg_sequence ;
 int diva_free_dma_descriptor (int *,int) ;
 int diva_maint_wakeup_read () ;
 int diva_os_enter_spin_lock (int *,int *,char*) ;
 int diva_os_free (int ,int *) ;
 int diva_os_get_time (void**,void**) ;
 int diva_os_leave_spin_lock (int *,int *,char*) ;
 int memcpy (TYPE_2__*,char*,int) ;
 int memset (TYPE_5__*,int,int) ;
 scalar_t__ queueAllocMsg (int ,int ) ;
 int queueCompleteMsg (TYPE_2__*) ;
 int queueFreeMsg (int ) ;
 scalar_t__ queuePeekMsg (int ,int *) ;
 int sprintf (char*,char*,int,char*) ;
 int stub1 (int ) ;

void diva_mnt_remove_xdi_adapter (const DESCRIPTOR* d) {
  diva_os_spin_lock_magic_t old_irql, old_irql1;
  dword sec, usec;
  int i;
  word size;
  byte* pmem = ((void*)0);

  diva_os_get_time (&sec, &usec);

  diva_os_enter_spin_lock (&dbg_adapter_lock, &old_irql1, "read");
  diva_os_enter_spin_lock (&dbg_q_lock, &old_irql, "read");

  for (i = 1; i < ARRAY_SIZE(clients); i++) {
    if (clients[i].hDbg && (clients[i].request == d->request)) {
      diva_dbg_entry_head_t* pmsg;
      char tmp[256];
      int len;

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




      len = sprintf (tmp, "DIMAINT - drv # %d = '%s' de-registered",
                     i, clients[i].Dbg.drvName);

      memset (&clients[i].Dbg, 0x00, sizeof(clients[i].Dbg));

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
