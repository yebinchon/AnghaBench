
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


struct TYPE_8__ {int pam; } ;
struct TYPE_9__ {TYPE_2__ pmcw; } ;
struct subchannel {TYPE_3__ schib; } ;
struct TYPE_7__ {int parent; } ;
struct ccw_device {TYPE_6__* private; TYPE_1__ dev; } ;
struct TYPE_11__ {scalar_t__ doverify; int mpath; int pgroup; } ;
struct TYPE_10__ {int mpath; int pgroup; } ;
struct TYPE_12__ {TYPE_5__ flags; TYPE_4__ options; int pgid_todo_mask; scalar_t__ pgid_valid_mask; int pgid; int dev_id; } ;


 int CIO_HEX_EVENT (int,int *,int) ;
 int CIO_TRACE_EVENT (int,char*) ;
 int memset (int ,int ,int) ;
 struct subchannel* to_subchannel (int ) ;
 int verify_start (struct ccw_device*) ;

void ccw_device_verify_start(struct ccw_device *cdev)
{
 struct subchannel *sch = to_subchannel(cdev->dev.parent);

 CIO_TRACE_EVENT(4, "vrfy");
 CIO_HEX_EVENT(4, &cdev->private->dev_id, sizeof(cdev->private->dev_id));

 memset(cdev->private->pgid, 0, sizeof(cdev->private->pgid));
 cdev->private->pgid_valid_mask = 0;
 cdev->private->pgid_todo_mask = sch->schib.pmcw.pam;




 cdev->private->flags.pgroup = cdev->private->options.pgroup;
 cdev->private->flags.mpath = cdev->private->options.mpath;
 cdev->private->flags.doverify = 0;
 verify_start(cdev);
}
