
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ctlr_info {TYPE_2__* pdev; } ;
struct CommandList {TYPE_1__* err_info; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {scalar_t__ CommandStatus; scalar_t__ ScsiStatus; scalar_t__* SenseInfo; } ;


 scalar_t__ CMD_SUCCESS ;
 scalar_t__ CMD_TARGET_STATUS ;
 int HPSA_MAX_WAIT_INTERVAL_SECS ;
 int HPSA_TUR_RETRY_LIMIT ;
 int IO_ERROR ;
 scalar_t__ NO_SENSE ;
 scalar_t__ SAM_STAT_CHECK_CONDITION ;
 int TEST_UNIT_READY ;
 int TYPE_CMD ;
 scalar_t__ UNIT_ATTENTION ;
 struct CommandList* cmd_special_alloc (struct ctlr_info*) ;
 int cmd_special_free (struct ctlr_info*,struct CommandList*) ;
 int dev_warn (int *,char*,...) ;
 int fill_cmd (struct CommandList*,int ,struct ctlr_info*,int *,int ,int ,unsigned char*,int ) ;
 int hpsa_scsi_do_simple_cmd_core (struct ctlr_info*,struct CommandList*) ;
 int msleep (int) ;

__attribute__((used)) static int wait_for_device_to_become_ready(struct ctlr_info *h,
 unsigned char lunaddr[])
{
 int rc = 0;
 int count = 0;
 int waittime = 1;
 struct CommandList *c;

 c = cmd_special_alloc(h);
 if (!c) {
  dev_warn(&h->pdev->dev, "out of memory in "
   "wait_for_device_to_become_ready.\n");
  return IO_ERROR;
 }


 while (count < HPSA_TUR_RETRY_LIMIT) {




  msleep(1000 * waittime);
  count++;


  if (waittime < HPSA_MAX_WAIT_INTERVAL_SECS)
   waittime = waittime * 2;


  fill_cmd(c, TEST_UNIT_READY, h, ((void*)0), 0, 0, lunaddr, TYPE_CMD);
  hpsa_scsi_do_simple_cmd_core(h, c);


  if (c->err_info->CommandStatus == CMD_SUCCESS)
   break;

  if (c->err_info->CommandStatus == CMD_TARGET_STATUS &&
   c->err_info->ScsiStatus == SAM_STAT_CHECK_CONDITION &&
   (c->err_info->SenseInfo[2] == NO_SENSE ||
   c->err_info->SenseInfo[2] == UNIT_ATTENTION))
   break;

  dev_warn(&h->pdev->dev, "waiting %d secs "
   "for device to become ready.\n", waittime);
  rc = 1;
 }

 if (rc)
  dev_warn(&h->pdev->dev, "giving up on device.\n");
 else
  dev_warn(&h->pdev->dev, "device is ready.\n");

 cmd_special_free(h, c);
 return rc;
}
