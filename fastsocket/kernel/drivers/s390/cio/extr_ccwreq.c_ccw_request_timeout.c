
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct subchannel {int dummy; } ;
struct ccw_request {int drc; } ;
struct TYPE_3__ {int parent; } ;
struct ccw_device {TYPE_2__* private; TYPE_1__ dev; } ;
struct TYPE_4__ {struct ccw_request req; } ;


 int ETIME ;
 int ccwreq_next_path (struct ccw_device*) ;
 int ccwreq_stop (struct ccw_device*,int) ;
 int cio_clear (struct subchannel*) ;
 struct subchannel* to_subchannel (int ) ;

void ccw_request_timeout(struct ccw_device *cdev)
{
 struct subchannel *sch = to_subchannel(cdev->dev.parent);
 struct ccw_request *req = &cdev->private->req;
 int rc;

 if (!ccwreq_next_path(cdev)) {

  req->drc = -ETIME;
 }
 rc = cio_clear(sch);
 if (rc)
  goto err;
 return;

err:
 ccwreq_stop(cdev, rc);
}
