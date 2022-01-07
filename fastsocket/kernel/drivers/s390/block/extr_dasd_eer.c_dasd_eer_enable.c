
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dasd_device {int cdev; struct dasd_ccw_req* eer_cqr; TYPE_1__* discipline; } ;
struct dasd_ccw_req {int retries; int expires; int callback; int status; int buildclk; scalar_t__ data; struct ccw1* cpaddr; int flags; struct dasd_device* startdev; } ;
struct ccw1 {scalar_t__ cda; int flags; int count; int cmd_code; } ;
typedef scalar_t__ addr_t ;
typedef scalar_t__ __u32 ;
struct TYPE_2__ {int name; } ;


 int DASD_CQR_ALLOW_SLOCK ;
 int DASD_CQR_FILLED ;
 int DASD_CQR_FLAGS_USE_ERP ;
 int DASD_ECKD_CCW_SNSS ;
 int DASD_ECKD_MAGIC ;
 int ENOMEM ;
 int EPERM ;
 int HZ ;
 scalar_t__ IS_ERR (struct dasd_ccw_req*) ;
 int SNSS_DATA_SIZE ;
 int clear_bit (int ,int *) ;
 int dasd_eer_snss_cb ;
 int dasd_kfree_request (struct dasd_ccw_req*,struct dasd_device*) ;
 struct dasd_ccw_req* dasd_kmalloc_request (int ,int,int ,struct dasd_device*) ;
 int get_ccwdev_lock (int ) ;
 int get_clock () ;
 int set_bit (int ,int *) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 scalar_t__ strcmp (int ,char*) ;

int dasd_eer_enable(struct dasd_device *device)
{
 struct dasd_ccw_req *cqr;
 unsigned long flags;
 struct ccw1 *ccw;

 if (device->eer_cqr)
  return 0;

 if (!device->discipline || strcmp(device->discipline->name, "ECKD"))
  return -EPERM;

 cqr = dasd_kmalloc_request(DASD_ECKD_MAGIC, 1 ,
       SNSS_DATA_SIZE, device);
 if (IS_ERR(cqr))
  return -ENOMEM;

 cqr->startdev = device;
 cqr->retries = 255;
 cqr->expires = 10 * HZ;
 clear_bit(DASD_CQR_FLAGS_USE_ERP, &cqr->flags);
 set_bit(DASD_CQR_ALLOW_SLOCK, &cqr->flags);

 ccw = cqr->cpaddr;
 ccw->cmd_code = DASD_ECKD_CCW_SNSS;
 ccw->count = SNSS_DATA_SIZE;
 ccw->flags = 0;
 ccw->cda = (__u32)(addr_t) cqr->data;

 cqr->buildclk = get_clock();
 cqr->status = DASD_CQR_FILLED;
 cqr->callback = dasd_eer_snss_cb;

 spin_lock_irqsave(get_ccwdev_lock(device->cdev), flags);
 if (!device->eer_cqr) {
  device->eer_cqr = cqr;
  cqr = ((void*)0);
 }
 spin_unlock_irqrestore(get_ccwdev_lock(device->cdev), flags);
 if (cqr)
  dasd_kfree_request(cqr, device);
 return 0;
}
