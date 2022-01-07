
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct fw_event_work {struct MPT2SAS_ADAPTER* ioc; int device_handle; int event; } ;
struct MPT2SAS_ADAPTER {int dummy; } ;


 int GFP_ATOMIC ;
 int MPT2SAS_TURN_ON_FAULT_LED ;
 int _scsih_fw_event_add (struct MPT2SAS_ADAPTER*,struct fw_event_work*) ;
 struct fw_event_work* kzalloc (int,int ) ;

__attribute__((used)) static void
_scsih_send_event_to_turn_on_fault_led(struct MPT2SAS_ADAPTER *ioc, u16 handle)
{
 struct fw_event_work *fw_event;

 fw_event = kzalloc(sizeof(struct fw_event_work), GFP_ATOMIC);
 if (!fw_event)
  return;
 fw_event->event = MPT2SAS_TURN_ON_FAULT_LED;
 fw_event->device_handle = handle;
 fw_event->ioc = ioc;
 _scsih_fw_event_add(ioc, fw_event);
}
