
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dasd_device {TYPE_1__* cdev; } ;
struct dasd_ccw_req {int expires; int retries; int status; int buildclk; struct dasd_device* memdev; struct dasd_device* startdev; scalar_t__ data; struct ccw1* cpaddr; } ;
struct ccw1 {int count; scalar_t__ flags; void* cda; int cmd_code; } ;
typedef scalar_t__ addr_t ;
typedef void* __u32 ;
struct TYPE_2__ {int dev; } ;


 int CCW_CMD_RDC ;
 scalar_t__ CCW_FLAG_IDA ;
 int DASD_CQR_FILLED ;
 int HZ ;
 scalar_t__ IS_ERR (struct dasd_ccw_req*) ;
 struct dasd_ccw_req* dasd_smalloc_request (int,int,int,struct dasd_device*) ;
 int dev_err (int *,char*,char*) ;
 int get_clock () ;
 unsigned long* idal_create_words (unsigned long*,void*,int) ;
 scalar_t__ idal_is_needed (void*,int) ;

__attribute__((used)) static struct dasd_ccw_req *dasd_generic_build_rdc(struct dasd_device *device,
         void *rdc_buffer,
         int rdc_buffer_size,
         int magic)
{
 struct dasd_ccw_req *cqr;
 struct ccw1 *ccw;
 unsigned long *idaw;

 cqr = dasd_smalloc_request(magic, 1 , rdc_buffer_size, device);

 if (IS_ERR(cqr)) {

  dev_err(&device->cdev->dev,
    "An error occurred in the DASD device driver, "
    "reason=%s\n", "13");
  return cqr;
 }

 ccw = cqr->cpaddr;
 ccw->cmd_code = CCW_CMD_RDC;
 if (idal_is_needed(rdc_buffer, rdc_buffer_size)) {
  idaw = (unsigned long *) (cqr->data);
  ccw->cda = (__u32)(addr_t) idaw;
  ccw->flags = CCW_FLAG_IDA;
  idaw = idal_create_words(idaw, rdc_buffer, rdc_buffer_size);
 } else {
  ccw->cda = (__u32)(addr_t) rdc_buffer;
  ccw->flags = 0;
 }

 ccw->count = rdc_buffer_size;
 cqr->startdev = device;
 cqr->memdev = device;
 cqr->expires = 10*HZ;
 cqr->retries = 256;
 cqr->buildclk = get_clock();
 cqr->status = DASD_CQR_FILLED;
 return cqr;
}
