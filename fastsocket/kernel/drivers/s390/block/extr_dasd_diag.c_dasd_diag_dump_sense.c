
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irb {int dummy; } ;
struct dasd_device {int dummy; } ;
struct dasd_ccw_req {int dummy; } ;


 int DBF_DEV_EVENT (int ,struct dasd_device*,char*,char*) ;
 int DBF_WARNING ;

__attribute__((used)) static void
dasd_diag_dump_sense(struct dasd_device *device, struct dasd_ccw_req * req,
       struct irb *stat)
{
 DBF_DEV_EVENT(DBF_WARNING, device, "%s",
      "dump sense not available for DIAG data");
}
