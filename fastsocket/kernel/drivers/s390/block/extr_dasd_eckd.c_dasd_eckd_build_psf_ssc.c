
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_psf_ssc_data {int suborder; int* reserved; int order; } ;
struct dasd_device {int dummy; } ;
struct dasd_ccw_req {int retries; int expires; int status; int buildclk; int * block; struct dasd_device* memdev; struct dasd_device* startdev; struct ccw1* cpaddr; scalar_t__ data; } ;
struct ccw1 {int count; scalar_t__ cda; int cmd_code; } ;
typedef scalar_t__ addr_t ;
typedef scalar_t__ __u32 ;


 int DASD_CQR_FILLED ;
 int DASD_ECKD_CCW_PSF ;
 int DASD_ECKD_MAGIC ;
 int DBF_DEV_EVENT (int ,struct dasd_device*,char*,char*) ;
 int DBF_WARNING ;
 int HZ ;
 scalar_t__ IS_ERR (struct dasd_ccw_req*) ;
 int PSF_ORDER_SSC ;
 struct dasd_ccw_req* dasd_smalloc_request (int ,int,int,struct dasd_device*) ;
 int get_clock () ;

__attribute__((used)) static struct dasd_ccw_req *dasd_eckd_build_psf_ssc(struct dasd_device *device,
          int enable_pav)
{
 struct dasd_ccw_req *cqr;
 struct dasd_psf_ssc_data *psf_ssc_data;
 struct ccw1 *ccw;

 cqr = dasd_smalloc_request(DASD_ECKD_MAGIC, 1 ,
      sizeof(struct dasd_psf_ssc_data),
      device);

 if (IS_ERR(cqr)) {
  DBF_DEV_EVENT(DBF_WARNING, device, "%s",
      "Could not allocate PSF-SSC request");
  return cqr;
 }
 psf_ssc_data = (struct dasd_psf_ssc_data *)cqr->data;
 psf_ssc_data->order = PSF_ORDER_SSC;
 psf_ssc_data->suborder = 0xc0;
 if (enable_pav) {
  psf_ssc_data->suborder |= 0x08;
  psf_ssc_data->reserved[0] = 0x88;
 }
 ccw = cqr->cpaddr;
 ccw->cmd_code = DASD_ECKD_CCW_PSF;
 ccw->cda = (__u32)(addr_t)psf_ssc_data;
 ccw->count = 66;

 cqr->startdev = device;
 cqr->memdev = device;
 cqr->block = ((void*)0);
 cqr->retries = 256;
 cqr->expires = 10*HZ;
 cqr->buildclk = get_clock();
 cqr->status = DASD_CQR_FILLED;
 return cqr;
}
