
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_eckd_private {int init_cqr_status; } ;
struct dasd_device {scalar_t__ private; } ;
struct dasd_ccw_req {struct dasd_device* startdev; } ;


 int dasd_eckd_analysis_evaluation (struct dasd_ccw_req*) ;
 int dasd_kick_device (struct dasd_device*) ;
 int dasd_sfree_request (struct dasd_ccw_req*,struct dasd_device*) ;

__attribute__((used)) static void dasd_eckd_analysis_callback(struct dasd_ccw_req *init_cqr,
     void *data)
{
 struct dasd_eckd_private *private;
 struct dasd_device *device;

 device = init_cqr->startdev;
 private = (struct dasd_eckd_private *) device->private;
 private->init_cqr_status = dasd_eckd_analysis_evaluation(init_cqr);
 dasd_sfree_request(init_cqr, device);
 dasd_kick_device(device);
}
