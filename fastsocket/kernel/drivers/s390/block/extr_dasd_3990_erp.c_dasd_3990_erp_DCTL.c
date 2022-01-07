
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dasd_device {TYPE_1__* cdev; } ;
struct dasd_ccw_req {int expires; int retries; int status; int buildclk; scalar_t__ magic; struct dasd_device* memdev; struct dasd_device* startdev; struct dasd_ccw_req* refers; struct dasd_ccw_req* (* function ) (struct dasd_ccw_req*,char) ;int flags; struct ccw1* cpaddr; struct DCTL_data* data; } ;
struct ccw1 {int count; scalar_t__ cda; int cmd_code; } ;
struct DCTL_data {int subcommand; char modifier; } ;
typedef scalar_t__ addr_t ;
typedef scalar_t__ __u32 ;
struct TYPE_2__ {int dev; } ;


 int CCW_CMD_DCTL ;
 int DASD_CQR_FAILED ;
 int DASD_CQR_FILLED ;
 int HZ ;
 scalar_t__ IS_ERR (struct dasd_ccw_req*) ;
 struct dasd_ccw_req* dasd_alloc_erp_request (char*,int,int,struct dasd_device*) ;
 int dev_err (int *,char*) ;
 int get_clock () ;
 int memset (struct ccw1*,int ,int) ;

__attribute__((used)) static struct dasd_ccw_req *
dasd_3990_erp_DCTL(struct dasd_ccw_req * erp, char modifier)
{

 struct dasd_device *device = erp->startdev;
 struct DCTL_data *DCTL_data;
 struct ccw1 *ccw;
 struct dasd_ccw_req *dctl_cqr;

 dctl_cqr = dasd_alloc_erp_request((char *) &erp->magic, 1,
       sizeof(struct DCTL_data),
       device);
 if (IS_ERR(dctl_cqr)) {
  dev_err(&device->cdev->dev,
       "Unable to allocate DCTL-CQR\n");
  erp->status = DASD_CQR_FAILED;
  return erp;
 }

 DCTL_data = dctl_cqr->data;

 DCTL_data->subcommand = 0x02;
 DCTL_data->modifier = modifier;

 ccw = dctl_cqr->cpaddr;
 memset(ccw, 0, sizeof(struct ccw1));
 ccw->cmd_code = CCW_CMD_DCTL;
 ccw->count = 4;
 ccw->cda = (__u32)(addr_t) DCTL_data;
 dctl_cqr->flags = erp->flags;
 dctl_cqr->function = dasd_3990_erp_DCTL;
 dctl_cqr->refers = erp;
 dctl_cqr->startdev = device;
 dctl_cqr->memdev = device;
 dctl_cqr->magic = erp->magic;
 dctl_cqr->expires = 5 * 60 * HZ;
 dctl_cqr->retries = 2;

 dctl_cqr->buildclk = get_clock();

 dctl_cqr->status = DASD_CQR_FILLED;

 return dctl_cqr;

}
