
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_ccw_req {int dummy; } ;
typedef int dasd_erp_fn_t ;


 int dasd_default_erp_action ;

__attribute__((used)) static dasd_erp_fn_t
dasd_fba_erp_action(struct dasd_ccw_req * cqr)
{
 return dasd_default_erp_action;
}
