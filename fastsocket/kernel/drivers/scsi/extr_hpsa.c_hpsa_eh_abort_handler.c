
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct scsi_cmnd {int* cmnd; int serial_number; scalar_t__ host_scribble; TYPE_6__* device; } ;
struct hpsa_scsi_dev_t {int lun; int target; int bus; int scsi3addr; } ;
struct ctlr_info {int TMFSupportFlags; TYPE_5__* pdev; int cmpQ; TYPE_4__* scsi_host; int reqQ; } ;
struct TYPE_7__ {int upper; int lower; } ;
struct TYPE_8__ {TYPE_1__ Tag; } ;
struct CommandList {TYPE_3__* err_info; scalar_t__ scsi_cmd; TYPE_2__ Header; } ;
typedef int msg ;
struct TYPE_12__ {int channel; int id; int lun; struct hpsa_scsi_dev_t* hostdata; } ;
struct TYPE_11__ {int dev; } ;
struct TYPE_10__ {int host_no; } ;
struct TYPE_9__ {int CommandStatus; } ;


 int ABORT_COMPLETE_WAIT_SECS ;
 int CMD_ABORTED ;
 int FAILED ;
 int HPSATMF_LOG_TASK_ABORT ;
 int HPSATMF_PHYS_TASK_ABORT ;
 int SUCCESS ;
 scalar_t__ WARN (int ,char*) ;
 int dev_dbg (int *,char*,char*) ;
 int dev_err (int *,char*,char*) ;
 int dev_info (int *,char*,char*) ;
 int dev_warn (int *,char*,...) ;
 int finish_cmd (struct CommandList*) ;
 struct CommandList* hpsa_find_cmd_in_queue (struct ctlr_info*,struct scsi_cmnd*,int *) ;
 int hpsa_send_abort_both_ways (struct ctlr_info*,int ,struct CommandList*) ;
 int memset (char*,int ,int) ;
 int msleep (int) ;
 struct ctlr_info* sdev_to_hba (TYPE_6__*) ;
 scalar_t__ sprintf (char*,char*,int,int,...) ;

__attribute__((used)) static int hpsa_eh_abort_handler(struct scsi_cmnd *sc)
{

 int i, rc;
 struct ctlr_info *h;
 struct hpsa_scsi_dev_t *dev;
 struct CommandList *abort;
 struct CommandList *found;
 struct scsi_cmnd *as;
 char msg[256];
 int ml = 0;


 h = sdev_to_hba(sc->device);
 if (WARN(h == ((void*)0),
   "ABORT REQUEST FAILED, Controller lookup failed.\n"))
  return FAILED;


 if (!(HPSATMF_PHYS_TASK_ABORT & h->TMFSupportFlags) &&
  !(HPSATMF_LOG_TASK_ABORT & h->TMFSupportFlags))
  return FAILED;

 memset(msg, 0, sizeof(msg));
 ml += sprintf(msg+ml, "ABORT REQUEST on C%d:B%d:T%d:L%d ",
  h->scsi_host->host_no, sc->device->channel,
  sc->device->id, sc->device->lun);


 dev = sc->device->hostdata;
 if (!dev) {
  dev_err(&h->pdev->dev, "%s FAILED, Device lookup failed.\n",
    msg);
  return FAILED;
 }


 abort = (struct CommandList *) sc->host_scribble;
 if (abort == ((void*)0)) {
  dev_err(&h->pdev->dev, "%s FAILED, Command to abort is NULL.\n",
    msg);
  return FAILED;
 }

 ml += sprintf(msg+ml, "Tag:0x%08x:%08x ",
  abort->Header.Tag.upper, abort->Header.Tag.lower);
 as = (struct scsi_cmnd *) abort->scsi_cmd;
 if (as != ((void*)0))
  ml += sprintf(msg+ml, "Command:0x%x SN:0x%lx ",
   as->cmnd[0], as->serial_number);
 dev_dbg(&h->pdev->dev, "%s\n", msg);
 dev_warn(&h->pdev->dev, "Abort request on C%d:B%d:T%d:L%d\n",
  h->scsi_host->host_no, dev->bus, dev->target, dev->lun);





 found = hpsa_find_cmd_in_queue(h, sc, &h->reqQ);
 if (found) {
  found->err_info->CommandStatus = CMD_ABORTED;
  finish_cmd(found);
  dev_info(&h->pdev->dev, "%s Request SUCCEEDED (driver queue).\n",
    msg);
  return SUCCESS;
 }


 found = hpsa_find_cmd_in_queue(h, sc, &h->cmpQ);
 if (!found) {
  dev_dbg(&h->pdev->dev, "%s Request FAILED (not known to driver).\n",
    msg);
  return SUCCESS;
 }






 rc = hpsa_send_abort_both_ways(h, dev->scsi3addr, abort);
 if (rc != 0) {
  dev_dbg(&h->pdev->dev, "%s Request FAILED.\n", msg);
  dev_warn(&h->pdev->dev, "FAILED abort on device C%d:B%d:T%d:L%d\n",
   h->scsi_host->host_no,
   dev->bus, dev->target, dev->lun);
  return FAILED;
 }
 dev_info(&h->pdev->dev, "%s REQUEST SUCCEEDED.\n", msg);







 for (i = 0; i < 30 * 10; i++) {
  found = hpsa_find_cmd_in_queue(h, sc, &h->cmpQ);
  if (!found)
   return SUCCESS;
  msleep(100);
 }
 dev_warn(&h->pdev->dev, "%s FAILED. Aborted command has not completed after %d seconds.\n",
  msg, 30);
 return FAILED;
}
