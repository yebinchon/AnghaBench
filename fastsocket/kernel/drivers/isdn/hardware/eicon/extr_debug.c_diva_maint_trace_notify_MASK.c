#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_8__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ word ;
typedef  void* dword ;
typedef  int /*<<< orphan*/  diva_strace_library_interface_t ;
struct TYPE_12__ {TYPE_2__* hDbg; int /*<<< orphan*/  logical; } ;
typedef  TYPE_3__ diva_maint_client_t ;
struct TYPE_13__ {int data_length; scalar_t__ di_cpu; int /*<<< orphan*/  drv_id; int /*<<< orphan*/  dli; int /*<<< orphan*/  facility; void* time_usec; void* time_sec; scalar_t__ sequence; } ;
typedef  TYPE_4__ diva_dbg_entry_head_t ;
typedef  scalar_t__ byte ;
struct TYPE_10__ {scalar_t__ id; } ;
struct TYPE_15__ {int logical; int /*<<< orphan*/ * pIdiLib; TYPE_1__ Dbg; } ;
struct TYPE_14__ {int code; } ;
struct TYPE_11__ {int /*<<< orphan*/  id; } ;
typedef  TYPE_5__ MI_XLOG_HDR ;

/* Variables and functions */
 int FUNC0 (TYPE_8__*) ; 
 int /*<<< orphan*/  MSG_TYPE_MLOG ; 
 scalar_t__* TraceFilter ; 
 int TraceFilterChannel ; 
 int TraceFilterIdent ; 
 TYPE_8__* clients ; 
 int /*<<< orphan*/  dbg_queue ; 
 int /*<<< orphan*/  dbg_sequence ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (void**,void**) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,void*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static void FUNC9 (void* user_context,
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

  /*
    Selective trace
    */
  if ((id >= 0) && (ch >= 0) && (id < FUNC0(clients)) &&
      (clients[id].Dbg.id == (byte)id) && (clients[id].pIdiLib == hLib)) {
    const char* p = NULL;
    int ch_value = -1;
    MI_XLOG_HDR *TrcData = (MI_XLOG_HDR *)xlog_buffer;

    if (Adapter != clients[id].logical) {
      return; /* Ignore all trace messages from other adapters */
    }

    if (TrcData->code == 24) {
      p = (char*)&TrcData->code;
      p += 2;
    }

    /*
      All L1 messages start as [dsp,ch], so we can filter this information
      and filter out all messages that use different channel
      */
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
          return; /* Ignore other channels */
        }
      }
    }

	} else if (TraceFilter[0] != 0) {
    return; /* Ignore trace if trace filter is activated, but idle */
  }

  FUNC2 (&sec, &usec);

  while (!(pmsg = (diva_dbg_entry_head_t*)FUNC4 (dbg_queue,
                              (word)length+sizeof(*pmsg)))) {
    if ((pmsg = (diva_dbg_entry_head_t*)FUNC8 (dbg_queue, &size))) {
      FUNC7 (dbg_queue);
    } else {
      break;
    }
  }
  if (pmsg) {
    FUNC3 (&pmsg[1], xlog_buffer, length);
    pmsg->sequence    = dbg_sequence++;
    pmsg->time_sec    = sec;
    pmsg->time_usec   = usec;
    pmsg->facility    = MSG_TYPE_MLOG;
    pmsg->dli         = pC->logical;
    pmsg->drv_id      = pC->hDbg->id;
    pmsg->di_cpu      = 0;
    pmsg->data_length = length;
    FUNC5 (pmsg);
    if (FUNC6(dbg_queue)) {
      FUNC1();
    }
  }
}