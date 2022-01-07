
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
dasd_3990_erp_file_prot(struct dasd_ccw_req * erp)
{

 struct dasd_device *device = erp->startdev;

 dev_err(&device->cdev->dev, "Accessing the DASD failed because of "
  "a hardware error\n");

 return dasd_3990_erp_cleanup(erp, DASD_CQR_FAILED);

}
