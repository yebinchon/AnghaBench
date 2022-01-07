
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ccw_request {struct ccw1* cp; } ;
struct ccw_device {TYPE_1__* private; } ;
struct ccw1 {int flags; scalar_t__ count; scalar_t__ cda; int cmd_code; } ;
struct TYPE_2__ {struct ccw1* iccws; struct ccw_request req; } ;


 int CCW_CMD_NOOP ;
 int CCW_FLAG_SLI ;

__attribute__((used)) static void nop_build_cp(struct ccw_device *cdev)
{
 struct ccw_request *req = &cdev->private->req;
 struct ccw1 *cp = cdev->private->iccws;

 cp->cmd_code = CCW_CMD_NOOP;
 cp->cda = 0;
 cp->count = 0;
 cp->flags = CCW_FLAG_SLI;
 req->cp = cp;
}
