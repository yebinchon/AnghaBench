
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_ccw_req {int status; } ;


 int DASD_CQR_FILLED ;

__attribute__((used)) static void dasd_fba_handle_terminated_request(struct dasd_ccw_req *cqr)
{
 cqr->status = DASD_CQR_FILLED;
}
