
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ word ;
typedef void* dword ;
typedef int diva_strace_library_interface_t ;
struct TYPE_12__ {TYPE_2__* hDbg; int logical; } ;
typedef TYPE_3__ diva_maint_client_t ;
struct TYPE_13__ {int data_length; scalar_t__ di_cpu; int drv_id; int dli; int facility; void* time_usec; void* time_sec; scalar_t__ sequence; } ;
typedef TYPE_4__ diva_dbg_entry_head_t ;
typedef scalar_t__ byte ;
struct TYPE_10__ {scalar_t__ id; } ;
struct TYPE_15__ {int logical; int * pIdiLib; TYPE_1__ Dbg; } ;
struct TYPE_14__ {int code; } ;
struct TYPE_11__ {int id; } ;
typedef TYPE_5__ MI_XLOG_HDR ;


 int ARRAY_SIZE (TYPE_8__*) ;
 int MSG_TYPE_MLOG ;
 scalar_t__* TraceFilter ;
 int TraceFilterChannel ;
 int TraceFilterIdent ;
 TYPE_8__* clients ;
 int dbg_queue ;
 int dbg_sequence ;
 int diva_maint_wakeup_read () ;
 int diva_os_get_time (void**,void**) ;
 int memcpy (TYPE_4__*,void*,int) ;
 scalar_t__ queueAllocMsg (int ,scalar_t__) ;
 int queueCompleteMsg (TYPE_4__*) ;
 scalar_t__ queueCount (int ) ;
 int queueFreeMsg (int ) ;
 scalar_t__ queuePeekMsg (int ,scalar_t__*) ;

__attribute__((used)) static void diva_maint_trace_notify (void* user_context,
                                     diva_strace_library_interface_t* hLib,
                                     int Adapter,
                                     void* xlog_buffer,
                                     int length) {
  diva_maint_client_t* pC = (diva_maint_client_t*)user_context;
  diva_dbg_entry_head_t* pmsg;
  word size;
  dword sec, usec;
  int ch = TraceFilterChannel;
  int id = TraceFilterIdent;




  if ((id >= 0) && (ch >= 0) && (id < ARRAY_SIZE(clients)) &&
      (clients[id].Dbg.id == (byte)id) && (clients[id].pIdiLib == hLib)) {
    const char* p = ((void*)0);
    int ch_value = -1;
    MI_XLOG_HDR *TrcData = (MI_XLOG_HDR *)xlog_buffer;

    if (Adapter != clients[id].logical) {
      return;
    }

    if (TrcData->code == 24) {
      p = (char*)&TrcData->code;
      p += 2;
    }





    if (p && p[0] == '[') {
      if (p[2] == ',') {
        p += 3;
        ch_value = *p - '0';
      } else if (p[3] == ',') {
        p += 4;
        ch_value = *p - '0';
      }
      if (ch_value >= 0) {
        if (p[2] == ']') {
          ch_value = ch_value * 10 + p[1] - '0';
        }
        if (ch_value != ch) {
          return;
        }
      }
    }

 } else if (TraceFilter[0] != 0) {
    return;
  }

  diva_os_get_time (&sec, &usec);

  while (!(pmsg = (diva_dbg_entry_head_t*)queueAllocMsg (dbg_queue,
                              (word)length+sizeof(*pmsg)))) {
    if ((pmsg = (diva_dbg_entry_head_t*)queuePeekMsg (dbg_queue, &size))) {
      queueFreeMsg (dbg_queue);
    } else {
      break;
    }
  }
  if (pmsg) {
    memcpy (&pmsg[1], xlog_buffer, length);
    pmsg->sequence = dbg_sequence++;
    pmsg->time_sec = sec;
    pmsg->time_usec = usec;
    pmsg->facility = MSG_TYPE_MLOG;
    pmsg->dli = pC->logical;
    pmsg->drv_id = pC->hDbg->id;
    pmsg->di_cpu = 0;
    pmsg->data_length = length;
    queueCompleteMsg (pmsg);
    if (queueCount(dbg_queue)) {
      diva_maint_wakeup_read();
    }
  }
}
