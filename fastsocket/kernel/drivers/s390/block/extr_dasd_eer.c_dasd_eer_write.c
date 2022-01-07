
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_device {int eer_cqr; } ;
struct dasd_ccw_req {int dummy; } ;






 int dasd_eer_write_snss_trigger (struct dasd_device*,struct dasd_ccw_req*,unsigned int) ;
 int dasd_eer_write_standard_trigger (struct dasd_device*,struct dasd_ccw_req*,unsigned int) ;

void dasd_eer_write(struct dasd_device *device, struct dasd_ccw_req *cqr,
      unsigned int id)
{
 if (!device->eer_cqr)
  return;
 switch (id) {
 case 131:
 case 129:
  dasd_eer_write_standard_trigger(device, cqr, id);
  break;
 case 130:
  dasd_eer_write_standard_trigger(device, ((void*)0), id);
  break;
 case 128:
  dasd_eer_write_snss_trigger(device, cqr, id);
  break;
 default:
  dasd_eer_write_standard_trigger(device, ((void*)0), id);
  break;
 }
}
