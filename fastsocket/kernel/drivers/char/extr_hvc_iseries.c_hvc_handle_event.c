
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct HvLpEvent {int xSubtype; int xRc; } ;


 int HvCallEvent_ackLpEvent (struct HvLpEvent*) ;
 int HvLpEvent_Rc_InvalidSubtype ;
 int VIOMINOR_SUBTYPE_MASK ;
 int hvc_ack_event (struct HvLpEvent*) ;
 int hvc_close_event (struct HvLpEvent*) ;
 int hvc_config_event (struct HvLpEvent*) ;
 int hvc_data_event (struct HvLpEvent*) ;
 int hvc_open_event (struct HvLpEvent*) ;
 int hvlpevent_is_int (struct HvLpEvent*) ;
 int hvlpevent_need_ack (struct HvLpEvent*) ;






__attribute__((used)) static void hvc_handle_event(struct HvLpEvent *event)
{
 int charminor;

 if (event == ((void*)0))
  return;

 charminor = event->xSubtype & VIOMINOR_SUBTYPE_MASK;
 switch (charminor) {
 case 128:
  hvc_open_event(event);
  break;
 case 131:
  hvc_close_event(event);
  break;
 case 129:
  hvc_data_event(event);
  break;
 case 132:
  hvc_ack_event(event);
  break;
 case 130:
  hvc_config_event(event);
  break;
 default:
  if (hvlpevent_is_int(event) && hvlpevent_need_ack(event)) {
   event->xRc = HvLpEvent_Rc_InvalidSubtype;
   HvCallEvent_ackLpEvent(event);
  }
 }
}
