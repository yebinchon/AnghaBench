
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dasd_device {scalar_t__ state; TYPE_1__* discipline; } ;
struct TYPE_2__ {int (* kick_validate ) (struct dasd_device*) ;} ;


 scalar_t__ DASD_STATE_KNOWN ;
 int DASD_STATE_NEW ;
 int DASD_STATE_ONLINE ;
 int _wait_for_device (struct dasd_device*) ;
 int dasd_init_waitq ;
 int dasd_reload_device (struct dasd_device*) ;
 int dasd_set_target_state (struct dasd_device*,int ) ;
 int stub1 (struct dasd_device*) ;
 int wait_event (int ,int ) ;

void dasd_enable_device(struct dasd_device *device)
{
 dasd_set_target_state(device, DASD_STATE_ONLINE);
 if (device->state <= DASD_STATE_KNOWN)

  dasd_set_target_state(device, DASD_STATE_NEW);

 wait_event(dasd_init_waitq, _wait_for_device(device));

 dasd_reload_device(device);
 if (device->discipline->kick_validate)
  device->discipline->kick_validate(device);
}
