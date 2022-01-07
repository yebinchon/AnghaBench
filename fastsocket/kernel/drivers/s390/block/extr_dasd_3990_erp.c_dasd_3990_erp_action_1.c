
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dasd_ccw_req {scalar_t__ status; int retries; struct dasd_ccw_req* (* function ) (struct dasd_ccw_req*) ;TYPE_2__* startdev; int lpm; int flags; } ;
struct TYPE_3__ {int opm; } ;
struct TYPE_4__ {TYPE_1__ path_data; } ;


 scalar_t__ DASD_CQR_FAILED ;
 scalar_t__ DASD_CQR_FILLED ;
 int DASD_CQR_VERIFY_PATH ;
 struct dasd_ccw_req* dasd_3990_erp_action_1_sec (struct dasd_ccw_req*) ;
 int dasd_3990_erp_alternate_path (struct dasd_ccw_req*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static struct dasd_ccw_req *dasd_3990_erp_action_1(struct dasd_ccw_req *erp)
{
 erp->function = dasd_3990_erp_action_1;
 dasd_3990_erp_alternate_path(erp);
 if (erp->status == DASD_CQR_FAILED &&
     !test_bit(DASD_CQR_VERIFY_PATH, &erp->flags)) {
  erp->status = DASD_CQR_FILLED;
  erp->retries = 10;
  erp->lpm = erp->startdev->path_data.opm;
  erp->function = dasd_3990_erp_action_1_sec;
 }
 return erp;
}
