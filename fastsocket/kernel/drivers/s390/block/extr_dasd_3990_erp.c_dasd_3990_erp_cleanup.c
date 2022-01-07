
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_ccw_req {char status; int memdev; struct dasd_ccw_req* refers; } ;


 int dasd_free_erp_request (struct dasd_ccw_req*,int ) ;

__attribute__((used)) static struct dasd_ccw_req *
dasd_3990_erp_cleanup(struct dasd_ccw_req * erp, char final_status)
{
 struct dasd_ccw_req *cqr = erp->refers;

 dasd_free_erp_request(erp, erp->memdev);
 cqr->status = final_status;
 return cqr;

}
