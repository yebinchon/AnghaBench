
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_psf_prssd_data {int suborder; int order; } ;
struct dasd_device {int dummy; } ;
struct dasd_ccw_req {int retries; int expires; struct dasd_device* memdev; int status; int buildclk; struct ccw1* cpaddr; scalar_t__ data; int flags; struct dasd_device* startdev; } ;
struct ccw1 {int count; void* cda; int cmd_code; int flags; } ;
struct alias_lcu {int lock; int flags; struct dasd_psf_prssd_data* uac; } ;
typedef scalar_t__ addr_t ;
typedef void* __u32 ;


 int CCW_FLAG_CC ;
 int DASD_CQR_FILLED ;
 int DASD_CQR_FLAGS_USE_ERP ;
 int DASD_ECKD_CCW_PSF ;
 int DASD_ECKD_CCW_RSSD ;
 int DASD_ECKD_MAGIC ;
 int HZ ;
 scalar_t__ IS_ERR (struct dasd_ccw_req*) ;
 int NEED_UAC_UPDATE ;
 int PSF_ORDER_PRSSD ;
 int PTR_ERR (struct dasd_ccw_req*) ;
 int clear_bit (int ,int *) ;
 int dasd_kfree_request (struct dasd_ccw_req*,struct dasd_device*) ;
 struct dasd_ccw_req* dasd_kmalloc_request (int ,int,int,struct dasd_device*) ;
 int dasd_sleep_on (struct dasd_ccw_req*) ;
 int get_clock () ;
 int memset (struct dasd_psf_prssd_data*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int read_unit_address_configuration(struct dasd_device *device,
        struct alias_lcu *lcu)
{
 struct dasd_psf_prssd_data *prssdp;
 struct dasd_ccw_req *cqr;
 struct ccw1 *ccw;
 int rc;
 unsigned long flags;

 cqr = dasd_kmalloc_request(DASD_ECKD_MAGIC, 1 + 1 ,
       (sizeof(struct dasd_psf_prssd_data)),
       device);
 if (IS_ERR(cqr))
  return PTR_ERR(cqr);
 cqr->startdev = device;
 cqr->memdev = device;
 clear_bit(DASD_CQR_FLAGS_USE_ERP, &cqr->flags);
 cqr->retries = 10;
 cqr->expires = 20 * HZ;


 prssdp = (struct dasd_psf_prssd_data *) cqr->data;
 memset(prssdp, 0, sizeof(struct dasd_psf_prssd_data));
 prssdp->order = PSF_ORDER_PRSSD;
 prssdp->suborder = 0x0e;


 ccw = cqr->cpaddr;
 ccw->cmd_code = DASD_ECKD_CCW_PSF;
 ccw->count = sizeof(struct dasd_psf_prssd_data);
 ccw->flags |= CCW_FLAG_CC;
 ccw->cda = (__u32)(addr_t) prssdp;


 memset(lcu->uac, 0, sizeof(*(lcu->uac)));

 ccw++;
 ccw->cmd_code = DASD_ECKD_CCW_RSSD;
 ccw->count = sizeof(*(lcu->uac));
 ccw->cda = (__u32)(addr_t) lcu->uac;

 cqr->buildclk = get_clock();
 cqr->status = DASD_CQR_FILLED;


 spin_lock_irqsave(&lcu->lock, flags);
 lcu->flags &= ~NEED_UAC_UPDATE;
 spin_unlock_irqrestore(&lcu->lock, flags);

 do {
  rc = dasd_sleep_on(cqr);
 } while (rc && (cqr->retries > 0));
 if (rc) {
  spin_lock_irqsave(&lcu->lock, flags);
  lcu->flags |= NEED_UAC_UPDATE;
  spin_unlock_irqrestore(&lcu->lock, flags);
 }
 dasd_kfree_request(cqr, cqr->memdev);
 return rc;
}
