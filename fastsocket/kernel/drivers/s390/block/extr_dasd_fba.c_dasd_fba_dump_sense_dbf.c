
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct irb {int scsw; } ;
struct dasd_device {int dummy; } ;


 int DBF_DEV_EVENT (int ,struct dasd_device*,char*,char*,...) ;
 int DBF_EMERG ;
 scalar_t__ dasd_get_sense (struct irb*) ;
 int scsw_cc (int *) ;
 int scsw_cstat (int *) ;
 int scsw_dstat (int *) ;
 scalar_t__ scsw_is_tm (int *) ;

__attribute__((used)) static void
dasd_fba_dump_sense_dbf(struct dasd_device *device, struct irb *irb,
   char *reason)
{
 u64 *sense;

 sense = (u64 *) dasd_get_sense(irb);
 if (sense) {
  DBF_DEV_EVENT(DBF_EMERG, device,
         "%s: %s %02x%02x%02x %016llx %016llx %016llx "
         "%016llx", reason,
         scsw_is_tm(&irb->scsw) ? "t" : "c",
         scsw_cc(&irb->scsw), scsw_cstat(&irb->scsw),
         scsw_dstat(&irb->scsw), sense[0], sense[1],
         sense[2], sense[3]);
 } else {
  DBF_DEV_EVENT(DBF_EMERG, device, "%s",
         "SORRY - NO VALID SENSE AVAILABLE\n");
 }
}
