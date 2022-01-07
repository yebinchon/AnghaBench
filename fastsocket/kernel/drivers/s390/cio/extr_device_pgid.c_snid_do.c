
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int pam; } ;
struct TYPE_7__ {TYPE_4__ pmcw; } ;
struct subchannel {TYPE_3__ schib; } ;
struct ccw_request {int lpm; } ;
struct TYPE_5__ {int parent; } ;
struct ccw_device {TYPE_2__* private; TYPE_1__ dev; } ;
struct TYPE_6__ {scalar_t__ pgid_valid_mask; struct ccw_request req; } ;


 int EACCES ;
 int ccw_request_start (struct ccw_device*) ;
 int lpm_adjust (int ,int ) ;
 int snid_build_cp (struct ccw_device*) ;
 int snid_done (struct ccw_device*,int ) ;
 struct subchannel* to_subchannel (int ) ;

__attribute__((used)) static void snid_do(struct ccw_device *cdev)
{
 struct subchannel *sch = to_subchannel(cdev->dev.parent);
 struct ccw_request *req = &cdev->private->req;


 req->lpm = lpm_adjust(req->lpm, sch->schib.pmcw.pam);
 if (!req->lpm)
  goto out_nopath;
 snid_build_cp(cdev);
 ccw_request_start(cdev);
 return;

out_nopath:
 snid_done(cdev, cdev->private->pgid_valid_mask ? 0 : -EACCES);
}
