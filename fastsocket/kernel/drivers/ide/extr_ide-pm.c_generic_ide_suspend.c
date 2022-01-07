
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct request_pm_state {scalar_t__ pm_state; int pm_step; } ;
struct request {struct request_pm_state* special; int cmd_type; } ;
struct device {int dummy; } ;
typedef int rqpm ;
struct TYPE_7__ {scalar_t__ event; } ;
typedef TYPE_1__ pm_message_t ;
typedef int ide_hwif_t ;
struct TYPE_8__ {int dn; int queue; int * hwif; } ;
typedef TYPE_2__ ide_drive_t ;


 int IDE_PM_START_SUSPEND ;
 scalar_t__ PM_EVENT_FREEZE ;
 scalar_t__ PM_EVENT_PRETHAW ;
 int READ ;
 int REQ_TYPE_PM_SUSPEND ;
 int __GFP_WAIT ;
 int blk_execute_rq (int ,int *,struct request*,int ) ;
 struct request* blk_get_request (int ,int ,int ) ;
 int blk_put_request (struct request*) ;
 TYPE_2__* dev_get_drvdata (struct device*) ;
 int ide_acpi_get_timing (int *) ;
 int ide_acpi_set_state (int *,int ) ;
 TYPE_2__* ide_get_pair_dev (TYPE_2__*) ;
 scalar_t__ ide_port_acpi (int *) ;
 int memset (struct request_pm_state*,int ,int) ;

int generic_ide_suspend(struct device *dev, pm_message_t mesg)
{
 ide_drive_t *drive = dev_get_drvdata(dev);
 ide_drive_t *pair = ide_get_pair_dev(drive);
 ide_hwif_t *hwif = drive->hwif;
 struct request *rq;
 struct request_pm_state rqpm;
 int ret;

 if (ide_port_acpi(hwif)) {

  if ((drive->dn & 1) == 0 || pair == ((void*)0))
   ide_acpi_get_timing(hwif);
 }

 memset(&rqpm, 0, sizeof(rqpm));
 rq = blk_get_request(drive->queue, READ, __GFP_WAIT);
 rq->cmd_type = REQ_TYPE_PM_SUSPEND;
 rq->special = &rqpm;
 rqpm.pm_step = IDE_PM_START_SUSPEND;
 if (mesg.event == PM_EVENT_PRETHAW)
  mesg.event = PM_EVENT_FREEZE;
 rqpm.pm_state = mesg.event;

 ret = blk_execute_rq(drive->queue, ((void*)0), rq, 0);
 blk_put_request(rq);

 if (ret == 0 && ide_port_acpi(hwif)) {

  if ((drive->dn & 1) || pair == ((void*)0))
   ide_acpi_set_state(hwif, 0);
 }

 return ret;
}
