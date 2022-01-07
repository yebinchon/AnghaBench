
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_event_work {void* event_data; struct MPT3SAS_ADAPTER* ioc; int event; } ;
struct SL_WH_TRIGGERS_EVENT_DATA_T {int dummy; } ;
struct MPT3SAS_ADAPTER {scalar_t__ is_driver_loading; } ;


 int GFP_ATOMIC ;
 int MPT3SAS_PROCESS_TRIGGER_DIAG ;
 int _scsih_fw_event_add (struct MPT3SAS_ADAPTER*,struct fw_event_work*) ;
 void* kzalloc (int,int ) ;
 int memcpy (void*,struct SL_WH_TRIGGERS_EVENT_DATA_T*,int) ;

void
mpt3sas_send_trigger_data_event(struct MPT3SAS_ADAPTER *ioc,
 struct SL_WH_TRIGGERS_EVENT_DATA_T *event_data)
{
 struct fw_event_work *fw_event;

 if (ioc->is_driver_loading)
  return;
 fw_event = kzalloc(sizeof(struct fw_event_work), GFP_ATOMIC);
 if (!fw_event)
  return;
 fw_event->event_data = kzalloc(sizeof(*event_data), GFP_ATOMIC);
 if (!fw_event->event_data)
  return;
 fw_event->event = MPT3SAS_PROCESS_TRIGGER_DIAG;
 fw_event->ioc = ioc;
 memcpy(fw_event->event_data, event_data, sizeof(*event_data));
 _scsih_fw_event_add(ioc, fw_event);
}
