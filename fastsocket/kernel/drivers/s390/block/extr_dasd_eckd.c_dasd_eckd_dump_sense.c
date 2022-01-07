
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irb {int scsw; } ;
struct dasd_device {int dummy; } ;
struct dasd_ccw_req {int dummy; } ;


 int dasd_eckd_dump_sense_ccw (struct dasd_device*,struct dasd_ccw_req*,struct irb*) ;
 int dasd_eckd_dump_sense_tcw (struct dasd_device*,struct dasd_ccw_req*,struct irb*) ;
 scalar_t__ scsw_is_tm (int *) ;

__attribute__((used)) static void dasd_eckd_dump_sense(struct dasd_device *device,
     struct dasd_ccw_req *req, struct irb *irb)
{
 if (scsw_is_tm(&irb->scsw))
  dasd_eckd_dump_sense_tcw(device, req, irb);
 else
  dasd_eckd_dump_sense_ccw(device, req, irb);
}
