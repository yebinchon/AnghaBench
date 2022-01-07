
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct request_pm_state {int pm_state; int pm_step; } ;
struct request {struct request_pm_state* special; int cmd_flags; int cmd_type; } ;
struct ide_driver {int (* resume ) (TYPE_1__*) ;} ;
struct device {scalar_t__ driver; } ;
typedef int rqpm ;
typedef int ide_hwif_t ;
struct TYPE_7__ {int dn; int queue; int * hwif; } ;
typedef TYPE_1__ ide_drive_t ;


 int IDE_PM_START_RESUME ;
 int PM_EVENT_ON ;
 int READ ;
 int REQ_PREEMPT ;
 int REQ_TYPE_PM_RESUME ;
 int __GFP_WAIT ;
 int blk_execute_rq (int ,int *,struct request*,int) ;
 struct request* blk_get_request (int ,int ,int ) ;
 int blk_put_request (struct request*) ;
 TYPE_1__* dev_get_drvdata (struct device*) ;
 int ide_acpi_exec_tfs (TYPE_1__*) ;
 int ide_acpi_push_timing (int *) ;
 int ide_acpi_set_state (int *,int) ;
 TYPE_1__* ide_get_pair_dev (TYPE_1__*) ;
 scalar_t__ ide_port_acpi (int *) ;
 int memset (struct request_pm_state*,int ,int) ;
 int stub1 (TYPE_1__*) ;
 struct ide_driver* to_ide_driver (scalar_t__) ;

int generic_ide_resume(struct device *dev)
{
 ide_drive_t *drive = dev_get_drvdata(dev);
 ide_drive_t *pair = ide_get_pair_dev(drive);
 ide_hwif_t *hwif = drive->hwif;
 struct request *rq;
 struct request_pm_state rqpm;
 int err;

 if (ide_port_acpi(hwif)) {

  if ((drive->dn & 1) == 0 || pair == ((void*)0)) {
   ide_acpi_set_state(hwif, 1);
   ide_acpi_push_timing(hwif);
  }

  ide_acpi_exec_tfs(drive);
 }

 memset(&rqpm, 0, sizeof(rqpm));
 rq = blk_get_request(drive->queue, READ, __GFP_WAIT);
 rq->cmd_type = REQ_TYPE_PM_RESUME;
 rq->cmd_flags |= REQ_PREEMPT;
 rq->special = &rqpm;
 rqpm.pm_step = IDE_PM_START_RESUME;
 rqpm.pm_state = PM_EVENT_ON;

 err = blk_execute_rq(drive->queue, ((void*)0), rq, 1);
 blk_put_request(rq);

 if (err == 0 && dev->driver) {
  struct ide_driver *drv = to_ide_driver(dev->driver);

  if (drv->resume)
   drv->resume(drive);
 }

 return err;
}
