
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_14__ {int error_notify_proc; int trace_proc; int notify_proc; int user_context; } ;
typedef TYPE_5__ diva_trace_library_user_interface_t ;
typedef int diva_strace_path2action_t ;
typedef int diva_strace_library_interface_t ;
struct TYPE_13__ {int * R; } ;
struct TYPE_11__ {int error_notify_proc; int trace_proc; int notify_proc; int user_context; } ;
struct TYPE_10__ {int DivaSTraceClearCall; int DivaSTraceGetDLayer2Statistics; int DivaSTraceGetDLayer1Statistics; int DivaSTraceGetBLayer2Statistics; int DivaSTraceGetBLayer1Statistics; int DivaSTraceGetFaxStatistics; int DivaSTraceGetModemStatistics; int DivaSTraceGetIncomingCallStatistics; int DivaSTraceGetOutgoingCallStatistics; int DivaSTraceSetInfo; int DivaSTraceSetDChannel; int DivaSTraceSetBChannel; int DivaSTraceSetAudioTap; int DivaSTraceGetHandle; int DivaSTraceMessageInput; int DivaSTraceLibraryFinit; int DivaSTraceLibraryStop; int DivaSTraceLibraryStart; TYPE_6__* hLib; } ;
struct TYPE_15__ {int Adapter; int Channels; int parse_entries; int req_busy; int rc_ok; int RData; TYPE_4__ e; int InterfaceStat; TYPE_3__* lines; int Interface; int * parse_table; int hAdapter; TYPE_2__ user_proc_table; TYPE_1__ instance; } ;
typedef TYPE_6__ diva_strace_context_t ;
typedef int byte ;
struct TYPE_12__ {int * pInterfaceStat; int * pInterface; } ;


 int ASSIGN_OK ;
 int DLI_ERR ;
 int DivaSTraceLibraryStart ;
 int DivaSTraceLibraryStop ;
 int FAX_PARSE_ENTRIES ;
 int LINE_PARSE_ENTRIES ;
 int MODEM_PARSE_ENTRIES ;
 int STAT_PARSE_ENTRIES ;
 int SuperTraceClearCall ;
 int SuperTraceGetBLayer1Statistics ;
 int SuperTraceGetBLayer2Statistics ;
 int SuperTraceGetDLayer1Statistics ;
 int SuperTraceGetDLayer2Statistics ;
 int SuperTraceGetFaxStatistics ;
 int SuperTraceGetHandle ;
 int SuperTraceGetIncomingCallStatistics ;
 int SuperTraceGetModemStatistics ;
 int SuperTraceGetNumberOfChannels (int ) ;
 int SuperTraceGetOutgoingCallStatistics ;
 int SuperTraceLibraryFinit ;
 int SuperTraceMessageInput ;
 int SuperTraceOpenAdapter (int) ;
 int SuperTraceSetAudioTap ;
 int SuperTraceSetBChannel ;
 int SuperTraceSetDChannel ;
 int SuperTraceSetInfo ;
 int diva_create_parse_table (TYPE_6__*) ;
 int diva_mnt_internal_dprintf (int ,int ,char*) ;
 int memset (TYPE_6__*,int,int) ;

diva_strace_library_interface_t* DivaSTraceLibraryCreateInstance (int Adapter,
           const diva_trace_library_user_interface_t* user_proc,
                      byte* pmem) {
 diva_strace_context_t* pLib = (diva_strace_context_t*)pmem;
 int i;

 if (!pLib) {
  return ((void*)0);
 }

 pmem += sizeof(*pLib);
 memset(pLib, 0x00, sizeof(*pLib));

 pLib->Adapter = Adapter;




 pLib->instance.hLib = pLib;
  pLib->instance.DivaSTraceLibraryStart = DivaSTraceLibraryStart;
  pLib->instance.DivaSTraceLibraryStop = DivaSTraceLibraryStop;
 pLib->instance.DivaSTraceLibraryFinit = SuperTraceLibraryFinit;
 pLib->instance.DivaSTraceMessageInput = SuperTraceMessageInput;
 pLib->instance.DivaSTraceGetHandle = SuperTraceGetHandle;
 pLib->instance.DivaSTraceSetAudioTap = SuperTraceSetAudioTap;
 pLib->instance.DivaSTraceSetBChannel = SuperTraceSetBChannel;
 pLib->instance.DivaSTraceSetDChannel = SuperTraceSetDChannel;
 pLib->instance.DivaSTraceSetInfo = SuperTraceSetInfo;
 pLib->instance.DivaSTraceGetOutgoingCallStatistics = SuperTraceGetOutgoingCallStatistics;

 pLib->instance.DivaSTraceGetIncomingCallStatistics = SuperTraceGetIncomingCallStatistics;

 pLib->instance.DivaSTraceGetModemStatistics = SuperTraceGetModemStatistics;

 pLib->instance.DivaSTraceGetFaxStatistics = SuperTraceGetFaxStatistics;

 pLib->instance.DivaSTraceGetBLayer1Statistics = SuperTraceGetBLayer1Statistics;

 pLib->instance.DivaSTraceGetBLayer2Statistics = SuperTraceGetBLayer2Statistics;

 pLib->instance.DivaSTraceGetDLayer1Statistics = SuperTraceGetDLayer1Statistics;

 pLib->instance.DivaSTraceGetDLayer2Statistics = SuperTraceGetDLayer2Statistics;

 pLib->instance.DivaSTraceClearCall = SuperTraceClearCall;


 if (user_proc) {
  pLib->user_proc_table.user_context = user_proc->user_context;
  pLib->user_proc_table.notify_proc = user_proc->notify_proc;
  pLib->user_proc_table.trace_proc = user_proc->trace_proc;
  pLib->user_proc_table.error_notify_proc = user_proc->error_notify_proc;
 }

 if (!(pLib->hAdapter = SuperTraceOpenAdapter (Adapter))) {
    diva_mnt_internal_dprintf (0, DLI_ERR, "Can not open XDI adapter");
  return ((void*)0);
 }
 pLib->Channels = SuperTraceGetNumberOfChannels (pLib->hAdapter);





 pLib->parse_entries = (MODEM_PARSE_ENTRIES + FAX_PARSE_ENTRIES + STAT_PARSE_ENTRIES + LINE_PARSE_ENTRIES + 1) * pLib->Channels;


 pLib->parse_table = (diva_strace_path2action_t*)pmem;

 for (i = 0; i < 30; i++) {
  pLib->lines[i].pInterface = &pLib->Interface;
  pLib->lines[i].pInterfaceStat = &pLib->InterfaceStat;
 }

  pLib->e.R = &pLib->RData;

 pLib->req_busy = 1;
 pLib->rc_ok = ASSIGN_OK;

 diva_create_parse_table (pLib);

 return ((diva_strace_library_interface_t*)pLib);
}
