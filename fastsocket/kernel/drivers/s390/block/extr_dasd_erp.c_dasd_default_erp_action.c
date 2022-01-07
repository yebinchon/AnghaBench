
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int opm; } ;
struct dasd_device {TYPE_2__* cdev; TYPE_1__ path_data; } ;
struct dasd_ccw_req {int stopclk; int status; int lpm; int flags; int retries; struct dasd_device* startdev; } ;
struct TYPE_4__ {int dev; } ;


 int DASD_CQR_FAILED ;
 int DASD_CQR_FILLED ;
 int DASD_CQR_VERIFY_PATH ;
 int DBF_DEBUG ;
 int DBF_DEV_EVENT (int ,struct dasd_device*,char*,int ) ;
 int dev_name (int *) ;
 int get_clock () ;
 int pr_err (char*,int ) ;
 int test_bit (int ,int *) ;

struct dasd_ccw_req *
dasd_default_erp_action(struct dasd_ccw_req *cqr)
{
 struct dasd_device *device;

 device = cqr->startdev;


        if (cqr->retries > 0) {
  DBF_DEV_EVENT(DBF_DEBUG, device,
                             "default ERP called (%i retries left)",
                             cqr->retries);
  if (!test_bit(DASD_CQR_VERIFY_PATH, &cqr->flags))
   cqr->lpm = device->path_data.opm;
  cqr->status = DASD_CQR_FILLED;
        } else {
  pr_err("%s: default ERP has run out of retries and failed\n",
         dev_name(&device->cdev->dev));
  cqr->status = DASD_CQR_FAILED;
  cqr->stopclk = get_clock();
        }
        return cqr;
}
