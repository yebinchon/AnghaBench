
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dasd_device {TYPE_1__* cdev; } ;
struct dasd_ccw_req {struct dasd_device* startdev; } ;
struct TYPE_2__ {int dev; } ;


 int DASD_CQR_FAILED ;
 struct dasd_ccw_req* dasd_3990_erp_cleanup (struct dasd_ccw_req*,int ) ;
 int dev_err (int *,char*) ;

__attribute__((used)) static struct dasd_ccw_req *
dasd_3990_erp_EOC(struct dasd_ccw_req * default_erp, char *sense)
{

 struct dasd_device *device = default_erp->startdev;

 dev_err(&device->cdev->dev,
  "The cylinder data for accessing the DASD is inconsistent\n");


 return dasd_3990_erp_cleanup(default_erp, DASD_CQR_FAILED);

}
