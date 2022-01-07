
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_device {int dummy; } ;
struct dasd_ccw_req {int retries; struct dasd_ccw_req* (* function ) (struct dasd_ccw_req*,char*) ;struct dasd_device* startdev; } ;


 int DBF_DEV_EVENT (int ,struct dasd_device*,char*,char*) ;
 int DBF_WARNING ;

__attribute__((used)) static struct dasd_ccw_req *
dasd_3990_erp_action_10_32(struct dasd_ccw_req * erp, char *sense)
{

 struct dasd_device *device = erp->startdev;

 erp->retries = 256;
 erp->function = dasd_3990_erp_action_10_32;

 DBF_DEV_EVENT(DBF_WARNING, device, "%s", "Perform logging requested");

 return erp;

}
