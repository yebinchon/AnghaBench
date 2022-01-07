
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dasd_device {TYPE_1__* cdev; } ;
struct dasd_ccw_req {scalar_t__ function; int retries; struct dasd_device* startdev; } ;
struct TYPE_2__ {int dev; } ;


 int HZ ;
 int dasd_3990_erp_block_queue (struct dasd_ccw_req*,int) ;
 int dev_err (int *,char*) ;

__attribute__((used)) static struct dasd_ccw_req *
dasd_3990_erp_int_req(struct dasd_ccw_req * erp)
{

 struct dasd_device *device = erp->startdev;




 if (erp->function != dasd_3990_erp_int_req) {

  erp->retries = 256;
  erp->function = dasd_3990_erp_int_req;

 } else {


  dev_err(&device->cdev->dev,
       "is offline or not installed - "
       "INTERVENTION REQUIRED!!\n");

  dasd_3990_erp_block_queue(erp, 60*HZ);
 }

 return erp;

}
