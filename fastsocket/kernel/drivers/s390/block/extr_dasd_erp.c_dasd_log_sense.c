
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irb {int dummy; } ;
struct dasd_device {TYPE_1__* discipline; } ;
struct dasd_ccw_req {struct dasd_device* startdev; } ;
struct TYPE_2__ {int (* dump_sense ) (struct dasd_device*,struct dasd_ccw_req*,struct irb*) ;} ;


 int stub1 (struct dasd_device*,struct dasd_ccw_req*,struct irb*) ;

void
dasd_log_sense(struct dasd_ccw_req *cqr, struct irb *irb)
{
 struct dasd_device *device;

 device = cqr->startdev;

 if (device->discipline && device->discipline->dump_sense)
  device->discipline->dump_sense(device, cqr, irb);
}
