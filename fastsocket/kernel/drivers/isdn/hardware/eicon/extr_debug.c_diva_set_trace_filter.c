
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int diva_os_spin_lock_magic_t ;
struct TYPE_7__ {int channels; TYPE_2__* pIdiLib; int (* request ) (int *) ;scalar_t__ request_pending; TYPE_1__* hDbg; } ;
struct TYPE_6__ {int hLib; scalar_t__ (* DivaSTraceGetHandle ) (int ) ;int (* DivaSTraceSetAudioTap ) (int ,int,int) ;int (* DivaSTraceSetBChannel ) (int ,int,int) ;} ;
struct TYPE_5__ {int dbgMask; } ;
typedef int ENTITY ;


 int ARRAY_SIZE (TYPE_3__*) ;
 int DIVA_MAX_SELECTIVE_FILTER_LENGTH ;
 int DIVA_MGT_DBG_IFC_AUDIO ;
 int DIVA_MGT_DBG_IFC_BCHANNEL ;
 char* TraceFilter ;
 int TraceFilterChannel ;
 int TraceFilterIdent ;
 TYPE_3__* clients ;
 int dbg_adapter_lock ;
 int dbg_q_lock ;
 int diva_os_enter_spin_lock (int *,int *,char*) ;
 int diva_os_leave_spin_lock (int *,int *,char*) ;
 int memcpy (char*,char const*,int) ;
 int stub1 (int ,int,int) ;
 int stub2 (int ,int,int) ;
 int stub3 (int *) ;
 scalar_t__ stub4 (int ) ;

int diva_set_trace_filter (int filter_length, const char* filter) {
  diva_os_spin_lock_magic_t old_irql, old_irql1;
  int i, ch, on, client_b_on, client_atap_on;

  diva_os_enter_spin_lock (&dbg_adapter_lock, &old_irql1, "dbg mask");
  diva_os_enter_spin_lock (&dbg_q_lock, &old_irql, "write_filter");

  if (filter_length <= DIVA_MAX_SELECTIVE_FILTER_LENGTH) {
    memcpy (&TraceFilter[0], filter, filter_length);
    if (TraceFilter[filter_length]) {
      TraceFilter[filter_length] = 0;
    }
    if (TraceFilter[0] == '*') {
      TraceFilter[0] = 0;
    }
  } else {
    filter_length = -1;
  }

  TraceFilterIdent = -1;
  TraceFilterChannel = -1;

  on = (TraceFilter[0] == 0);

  for (i = 1; i < ARRAY_SIZE(clients); i++) {
    if (clients[i].hDbg && clients[i].pIdiLib && clients[i].request) {
      client_b_on = on && ((clients[i].hDbg->dbgMask & DIVA_MGT_DBG_IFC_BCHANNEL) != 0);
      client_atap_on = on && ((clients[i].hDbg->dbgMask & DIVA_MGT_DBG_IFC_AUDIO) != 0);
      for (ch = 0; ch < clients[i].channels; ch++) {
        (*(clients[i].pIdiLib->DivaSTraceSetBChannel))(clients[i].pIdiLib->hLib, ch+1, client_b_on);
        (*(clients[i].pIdiLib->DivaSTraceSetAudioTap))(clients[i].pIdiLib->hLib, ch+1, client_atap_on);
      }
    }
  }

  for (i = 1; i < ARRAY_SIZE(clients); i++) {
    if (clients[i].hDbg && clients[i].pIdiLib && clients[i].request && clients[i].request_pending) {
      diva_os_leave_spin_lock (&dbg_q_lock, &old_irql, "write_filter");
      clients[i].request_pending = 0;
      (*(clients[i].request))((ENTITY*)(*(clients[i].pIdiLib->DivaSTraceGetHandle))(clients[i].pIdiLib->hLib));
      diva_os_enter_spin_lock (&dbg_q_lock, &old_irql, "write_filter");
    }
  }

  diva_os_leave_spin_lock (&dbg_q_lock, &old_irql, "write_filter");
  diva_os_leave_spin_lock (&dbg_adapter_lock, &old_irql1, "dbg mask");

  return (filter_length);
}
