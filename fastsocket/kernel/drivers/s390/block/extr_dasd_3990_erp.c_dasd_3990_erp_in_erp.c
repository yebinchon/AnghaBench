
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_ccw_req {struct dasd_ccw_req* refers; } ;


 int dasd_3990_erp_error_match (struct dasd_ccw_req*,struct dasd_ccw_req*) ;

__attribute__((used)) static struct dasd_ccw_req *
dasd_3990_erp_in_erp(struct dasd_ccw_req *cqr)
{

 struct dasd_ccw_req *erp_head = cqr,
 *erp_match = ((void*)0);
 int match = 0;

 if (cqr->refers == ((void*)0)) {
  return ((void*)0);
 }


 do {
  match = dasd_3990_erp_error_match(erp_head, cqr->refers);
  erp_match = cqr;
  cqr = cqr->refers;

 } while ((cqr->refers != ((void*)0)) && (!match));

 if (!match) {
  return ((void*)0);
 }

 return erp_match;

}
