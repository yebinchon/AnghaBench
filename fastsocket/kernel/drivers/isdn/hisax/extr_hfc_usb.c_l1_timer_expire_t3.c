
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int (* l1l2 ) (TYPE_3__*,int,int *) ;} ;
struct TYPE_7__ {TYPE_3__ ifc; } ;
struct TYPE_8__ {scalar_t__ l1_activated; TYPE_1__ d_if; } ;
typedef TYPE_2__ hfcusb_data ;


 int DBG (int ,char*) ;
 int HFCUSB_DBG_STATES ;
 int HFCUSB_STATES ;
 int INDICATION ;
 int LED_S0_OFF ;
 int PH_DEACTIVATE ;
 int handle_led (TYPE_2__*,int ) ;
 int queue_control_request (TYPE_2__*,int ,int,int) ;
 int stub1 (TYPE_3__*,int,int *) ;

__attribute__((used)) static void
l1_timer_expire_t3(hfcusb_data * hfc)
{
 hfc->d_if.ifc.l1l2(&hfc->d_if.ifc, PH_DEACTIVATE | INDICATION,
      ((void*)0));

 DBG(HFCUSB_DBG_STATES,
     "HFC-S USB: PH_DEACTIVATE | INDICATION sent (T3 expire)");

 hfc->l1_activated = 0;
 handle_led(hfc, LED_S0_OFF);

 queue_control_request(hfc, HFCUSB_STATES, 0x10, 1);
 queue_control_request(hfc, HFCUSB_STATES, 3, 1);
}
