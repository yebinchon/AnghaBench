
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char dstat; } ;
struct TYPE_4__ {TYPE_1__ cmd; } ;
struct irb {TYPE_2__ scsw; } ;
struct dasd_device {int dummy; } ;
struct dasd_ccw_req {int dummy; } ;


 char DEV_STAT_ATTENTION ;
 char DEV_STAT_DEV_END ;
 char DEV_STAT_UNIT_EXCEP ;
 int dasd_generic_handle_state_change (struct dasd_device*) ;

__attribute__((used)) static void dasd_fba_check_for_device_change(struct dasd_device *device,
          struct dasd_ccw_req *cqr,
          struct irb *irb)
{
 char mask;


 mask = DEV_STAT_ATTENTION | DEV_STAT_DEV_END | DEV_STAT_UNIT_EXCEP;
 if ((irb->scsw.cmd.dstat & mask) == mask)
  dasd_generic_handle_state_change(device);
}
