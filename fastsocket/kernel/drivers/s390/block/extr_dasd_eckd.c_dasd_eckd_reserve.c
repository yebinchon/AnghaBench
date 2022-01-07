
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dasd_device {int flags; } ;
struct dasd_ccw_req {int count; int retries; int expires; struct dasd_device* memdev; int status; int buildclk; int flags; struct dasd_device* startdev; int * data; scalar_t__ cda; int cmd_code; struct dasd_ccw_req* cpaddr; int magic; } ;
struct ccw1 {int count; int retries; int expires; struct dasd_device* memdev; int status; int buildclk; int flags; struct dasd_device* startdev; int * data; scalar_t__ cda; int cmd_code; struct ccw1* cpaddr; int magic; } ;
typedef scalar_t__ addr_t ;
typedef scalar_t__ __u32 ;
struct TYPE_2__ {int data; struct dasd_ccw_req ccw; struct dasd_ccw_req cqr; } ;


 int CAP_SYS_ADMIN ;
 int CCW_FLAG_SLI ;
 int DASD_CQR_FILLED ;
 int DASD_CQR_FLAGS_FAILFAST ;
 int DASD_CQR_FLAGS_USE_ERP ;
 int DASD_ECKD_CCW_RESERVE ;
 int DASD_ECKD_MAGIC ;
 int DASD_FLAG_IS_RESERVED ;
 int EACCES ;
 int HZ ;
 scalar_t__ IS_ERR (struct dasd_ccw_req*) ;
 int capable (int ) ;
 int clear_bit (int ,int *) ;
 int dasd_reserve_mutex ;
 TYPE_1__* dasd_reserve_req ;
 int dasd_sfree_request (struct dasd_ccw_req*,struct dasd_device*) ;
 int dasd_sleep_on_immediatly (struct dasd_ccw_req*) ;
 struct dasd_ccw_req* dasd_smalloc_request (int ,int,int,struct dasd_device*) ;
 int get_clock () ;
 int memset (struct dasd_ccw_req*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int
dasd_eckd_reserve(struct dasd_device *device)
{
 struct dasd_ccw_req *cqr;
 int rc;
 struct ccw1 *ccw;
 int useglobal;

 if (!capable(CAP_SYS_ADMIN))
  return -EACCES;

 useglobal = 0;
 cqr = dasd_smalloc_request(DASD_ECKD_MAGIC, 1, 32, device);
 if (IS_ERR(cqr)) {
  mutex_lock(&dasd_reserve_mutex);
  useglobal = 1;
  cqr = &dasd_reserve_req->cqr;
  memset(cqr, 0, sizeof(*cqr));
  memset(&dasd_reserve_req->ccw, 0,
         sizeof(dasd_reserve_req->ccw));
  cqr->cpaddr = &dasd_reserve_req->ccw;
  cqr->data = &dasd_reserve_req->data;
  cqr->magic = DASD_ECKD_MAGIC;
 }
 ccw = cqr->cpaddr;
 ccw->cmd_code = DASD_ECKD_CCW_RESERVE;
 ccw->flags |= CCW_FLAG_SLI;
 ccw->count = 32;
 ccw->cda = (__u32)(addr_t) cqr->data;
 cqr->startdev = device;
 cqr->memdev = device;
 clear_bit(DASD_CQR_FLAGS_USE_ERP, &cqr->flags);
 set_bit(DASD_CQR_FLAGS_FAILFAST, &cqr->flags);
 cqr->retries = 2;
 cqr->expires = 2 * HZ;
 cqr->buildclk = get_clock();
 cqr->status = DASD_CQR_FILLED;

 rc = dasd_sleep_on_immediatly(cqr);
 if (!rc)
  set_bit(DASD_FLAG_IS_RESERVED, &device->flags);

 if (useglobal)
  mutex_unlock(&dasd_reserve_mutex);
 else
  dasd_sfree_request(cqr, cqr->memdev);
 return rc;
}
