
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_device {int dummy; } ;
struct dasd_ccw_req {int retries; int expires; int status; int buildclk; int * block; struct dasd_device* memdev; struct dasd_device* startdev; int flags; scalar_t__ data; struct ccw1* cpaddr; int magic; } ;
struct ccw1 {int count; scalar_t__ cda; scalar_t__ flags; int cmd_code; } ;
struct alias_lcu {struct dasd_ccw_req* rsu_cqr; } ;
typedef scalar_t__ addr_t ;
typedef scalar_t__ __u32 ;


 int ASCEBC (char*,int) ;
 int DASD_CQR_FILLED ;
 int DASD_CQR_FLAGS_USE_ERP ;
 int DASD_ECKD_CCW_RSCK ;
 int HZ ;
 int clear_bit (int ,int *) ;
 int dasd_sleep_on_immediatly (struct dasd_ccw_req*) ;
 int get_clock () ;
 int strncpy (char*,char*,int) ;

__attribute__((used)) static int reset_summary_unit_check(struct alias_lcu *lcu,
        struct dasd_device *device,
        char reason)
{
 struct dasd_ccw_req *cqr;
 int rc = 0;
 struct ccw1 *ccw;

 cqr = lcu->rsu_cqr;
 strncpy((char *) &cqr->magic, "ECKD", 4);
 ASCEBC((char *) &cqr->magic, 4);
 ccw = cqr->cpaddr;
 ccw->cmd_code = DASD_ECKD_CCW_RSCK;
 ccw->flags = 0 ;
 ccw->count = 16;
 ccw->cda = (__u32)(addr_t) cqr->data;
 ((char *)cqr->data)[0] = reason;

 clear_bit(DASD_CQR_FLAGS_USE_ERP, &cqr->flags);
 cqr->retries = 255;
 cqr->startdev = device;
 cqr->memdev = device;
 cqr->block = ((void*)0);
 cqr->expires = 5 * HZ;
 cqr->buildclk = get_clock();
 cqr->status = DASD_CQR_FILLED;

 rc = dasd_sleep_on_immediatly(cqr);
 return rc;
}
