
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dasd_rssd_features {int suborder; int order; } ;
struct dasd_psf_prssd_data {int suborder; int order; } ;
struct dasd_eckd_private {struct dasd_rssd_features features; } ;
struct dasd_device {TYPE_1__* cdev; scalar_t__ private; } ;
struct dasd_ccw_req {int retries; int expires; struct dasd_device* memdev; scalar_t__ data; int status; int buildclk; struct ccw1* cpaddr; int * block; struct dasd_device* startdev; } ;
struct ccw1 {int count; void* cda; int cmd_code; int flags; } ;
typedef scalar_t__ addr_t ;
typedef void* __u32 ;
struct TYPE_2__ {int dev; } ;


 int CCW_FLAG_CC ;
 int DASD_CQR_FILLED ;
 int DASD_ECKD_CCW_PSF ;
 int DASD_ECKD_CCW_RSSD ;
 int DASD_ECKD_MAGIC ;
 int DBF_EVENT_DEVID (int ,TYPE_1__*,char*,char*) ;
 int DBF_WARNING ;
 int HZ ;
 scalar_t__ IS_ERR (struct dasd_ccw_req*) ;
 int PSF_ORDER_PRSSD ;
 int PTR_ERR (struct dasd_ccw_req*) ;
 int dasd_sfree_request (struct dasd_ccw_req*,struct dasd_device*) ;
 int dasd_sleep_on (struct dasd_ccw_req*) ;
 struct dasd_ccw_req* dasd_smalloc_request (int ,int,int,struct dasd_device*) ;
 int dev_warn (int *,char*,int) ;
 int get_clock () ;
 int memcpy (struct dasd_rssd_features*,struct dasd_rssd_features*,int) ;
 int memset (struct dasd_rssd_features*,int ,int) ;

__attribute__((used)) static int dasd_eckd_read_features(struct dasd_device *device)
{
 struct dasd_psf_prssd_data *prssdp;
 struct dasd_rssd_features *features;
 struct dasd_ccw_req *cqr;
 struct ccw1 *ccw;
 int rc;
 struct dasd_eckd_private *private;

 private = (struct dasd_eckd_private *) device->private;
 memset(&private->features, 0, sizeof(struct dasd_rssd_features));
 cqr = dasd_smalloc_request(DASD_ECKD_MAGIC, 1 + 1 ,
       (sizeof(struct dasd_psf_prssd_data) +
        sizeof(struct dasd_rssd_features)),
       device);
 if (IS_ERR(cqr)) {
  DBF_EVENT_DEVID(DBF_WARNING, device->cdev, "%s", "Could not "
    "allocate initialization request");
  return PTR_ERR(cqr);
 }
 cqr->startdev = device;
 cqr->memdev = device;
 cqr->block = ((void*)0);
 cqr->retries = 256;
 cqr->expires = 10 * HZ;


 prssdp = (struct dasd_psf_prssd_data *) cqr->data;
 memset(prssdp, 0, sizeof(struct dasd_psf_prssd_data));
 prssdp->order = PSF_ORDER_PRSSD;
 prssdp->suborder = 0x41;


 ccw = cqr->cpaddr;
 ccw->cmd_code = DASD_ECKD_CCW_PSF;
 ccw->count = sizeof(struct dasd_psf_prssd_data);
 ccw->flags |= CCW_FLAG_CC;
 ccw->cda = (__u32)(addr_t) prssdp;


 features = (struct dasd_rssd_features *) (prssdp + 1);
 memset(features, 0, sizeof(struct dasd_rssd_features));

 ccw++;
 ccw->cmd_code = DASD_ECKD_CCW_RSSD;
 ccw->count = sizeof(struct dasd_rssd_features);
 ccw->cda = (__u32)(addr_t) features;

 cqr->buildclk = get_clock();
 cqr->status = DASD_CQR_FILLED;
 rc = dasd_sleep_on(cqr);
 if (rc == 0) {
  prssdp = (struct dasd_psf_prssd_data *) cqr->data;
  features = (struct dasd_rssd_features *) (prssdp + 1);
  memcpy(&private->features, features,
         sizeof(struct dasd_rssd_features));
 } else
  dev_warn(&device->cdev->dev, "Reading device feature codes"
    " failed with rc=%d\n", rc);
 dasd_sfree_request(cqr, cqr->memdev);
 return rc;
}
