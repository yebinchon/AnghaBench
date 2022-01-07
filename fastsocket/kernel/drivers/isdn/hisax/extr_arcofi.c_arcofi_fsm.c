
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int arcofi_state; int arcofi_wait; int arcofitimer; TYPE_1__* arcofi_list; } ;
struct TYPE_6__ {TYPE_2__ isac; } ;
struct IsdnCardState {int debug; TYPE_3__ dc; int HW_Flags; } ;
struct TYPE_4__ {struct TYPE_4__* next; int receive; } ;




 int ARCOFI_RX_END ;
 int ARCOFI_START ;
 int ARCOFI_TIMEOUT ;

 int ARCOFI_TX_END ;
 int FLG_ARCOFI_ERROR ;
 int FLG_ARCOFI_TIMER ;
 int L1_DEB_MONITOR ;
 int add_arcofi_timer (struct IsdnCardState*) ;
 int debugl1 (struct IsdnCardState*,char*,int,...) ;
 int del_timer (int *) ;
 int send_arcofi (struct IsdnCardState*) ;
 int test_and_clear_bit (int ,int *) ;
 int test_and_set_bit (int ,int *) ;
 int wake_up (int *) ;

int
arcofi_fsm(struct IsdnCardState *cs, int event, void *data) {
 if (cs->debug & L1_DEB_MONITOR) {
  debugl1(cs, "arcofi state %d event %d", cs->dc.isac.arcofi_state, event);
 }
 if (event == ARCOFI_TIMEOUT) {
  cs->dc.isac.arcofi_state = 130;
  test_and_set_bit(FLG_ARCOFI_ERROR, &cs->HW_Flags);
  wake_up(&cs->dc.isac.arcofi_wait);
   return(1);
 }
 switch (cs->dc.isac.arcofi_state) {
  case 130:
   if (event == ARCOFI_START) {
    cs->dc.isac.arcofi_list = data;
    cs->dc.isac.arcofi_state = 128;
    send_arcofi(cs);
   }
   break;
  case 128:
   if (event == ARCOFI_TX_END) {
    if (cs->dc.isac.arcofi_list->receive) {
     add_arcofi_timer(cs);
     cs->dc.isac.arcofi_state = 129;
    } else {
     if (cs->dc.isac.arcofi_list->next) {
      cs->dc.isac.arcofi_list =
       cs->dc.isac.arcofi_list->next;
      send_arcofi(cs);
     } else {
      if (test_and_clear_bit(FLG_ARCOFI_TIMER, &cs->HW_Flags)) {
       del_timer(&cs->dc.isac.arcofitimer);
      }
      cs->dc.isac.arcofi_state = 130;
      wake_up(&cs->dc.isac.arcofi_wait);
     }
    }
   }
   break;
  case 129:
   if (event == ARCOFI_RX_END) {
    if (cs->dc.isac.arcofi_list->next) {
     cs->dc.isac.arcofi_list =
      cs->dc.isac.arcofi_list->next;
     cs->dc.isac.arcofi_state = 128;
     send_arcofi(cs);
    } else {
     if (test_and_clear_bit(FLG_ARCOFI_TIMER, &cs->HW_Flags)) {
      del_timer(&cs->dc.isac.arcofitimer);
     }
     cs->dc.isac.arcofi_state = 130;
     wake_up(&cs->dc.isac.arcofi_wait);
    }
   }
   break;
  default:
   debugl1(cs, "Arcofi unknown state %x", cs->dc.isac.arcofi_state);
   return(2);
 }
 return(0);
}
