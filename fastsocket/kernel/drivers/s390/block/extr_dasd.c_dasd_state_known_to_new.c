
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dasd_device {scalar_t__ block; int state; TYPE_1__* base_discipline; TYPE_2__* discipline; } ;
struct TYPE_4__ {int owner; int (* uncheck_device ) (struct dasd_device*) ;} ;
struct TYPE_3__ {int owner; } ;


 int DASD_STATE_NEW ;
 int dasd_eer_disable (struct dasd_device*) ;
 int dasd_free_queue (scalar_t__) ;
 int dasd_put_device (struct dasd_device*) ;
 int module_put (int ) ;
 int stub1 (struct dasd_device*) ;

__attribute__((used)) static int dasd_state_known_to_new(struct dasd_device *device)
{

 dasd_eer_disable(device);

 if (device->discipline) {
  if (device->discipline->uncheck_device)
   device->discipline->uncheck_device(device);
  module_put(device->discipline->owner);
 }
 device->discipline = ((void*)0);
 if (device->base_discipline)
  module_put(device->base_discipline->owner);
 device->base_discipline = ((void*)0);
 device->state = DASD_STATE_NEW;

 if (device->block)
  dasd_free_queue(device->block);


 dasd_put_device(device);
 return 0;
}
