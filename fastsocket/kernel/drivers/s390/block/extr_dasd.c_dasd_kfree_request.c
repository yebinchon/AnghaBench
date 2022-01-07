
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dasd_device {int dummy; } ;
struct dasd_ccw_req {struct dasd_ccw_req* data; struct dasd_ccw_req* cpaddr; } ;
struct ccw1 {struct ccw1* data; struct ccw1* cpaddr; } ;
struct TYPE_2__ {int flags; } ;


 int CCW_FLAG_CC ;
 int CCW_FLAG_DC ;
 int clear_normalized_cda (struct dasd_ccw_req*) ;
 int dasd_put_device (struct dasd_device*) ;
 int kfree (struct dasd_ccw_req*) ;

void dasd_kfree_request(struct dasd_ccw_req *cqr, struct dasd_device *device)
{
 kfree(cqr->cpaddr);
 kfree(cqr->data);
 kfree(cqr);
 dasd_put_device(device);
}
