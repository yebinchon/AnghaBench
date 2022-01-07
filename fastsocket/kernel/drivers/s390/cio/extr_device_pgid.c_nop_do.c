
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pam; } ;
struct TYPE_6__ {TYPE_1__ pmcw; } ;
struct subchannel {int opm; scalar_t__ vpm; TYPE_2__ schib; } ;
struct ccw_request {int lpm; } ;
struct TYPE_7__ {int parent; } ;
struct ccw_device {TYPE_4__* private; TYPE_3__ dev; } ;
struct TYPE_8__ {struct ccw_request req; } ;


 int EACCES ;
 int ccw_request_start (struct ccw_device*) ;
 int lpm_adjust (int ,int) ;
 int nop_build_cp (struct ccw_device*) ;
 struct subchannel* to_subchannel (int ) ;
 int verify_done (struct ccw_device*,int ) ;

__attribute__((used)) static void nop_do(struct ccw_device *cdev)
{
 struct subchannel *sch = to_subchannel(cdev->dev.parent);
 struct ccw_request *req = &cdev->private->req;


 req->lpm = lpm_adjust(req->lpm, sch->schib.pmcw.pam & sch->opm);
 if (!req->lpm)
  goto out_nopath;
 nop_build_cp(cdev);
 ccw_request_start(cdev);
 return;

out_nopath:
 verify_done(cdev, sch->vpm ? 0 : -EACCES);
}
