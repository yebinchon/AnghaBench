
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct subchannel {int dummy; } ;
struct irb {int dummy; } ;
struct ccw_request {int timeout; scalar_t__ mask; int retries; struct ccw1* cp; } ;
struct TYPE_3__ {int parent; } ;
struct ccw_device {TYPE_2__* private; TYPE_1__ dev; } ;
struct ccw1 {int dummy; } ;
struct TYPE_4__ {int irb; struct ccw_request req; } ;


 int EACCES ;
 int ENODEV ;
 int ccw_device_set_timeout (struct ccw_device*,int ) ;
 int ccwreq_next_path (struct ccw_device*) ;
 int ccwreq_stop (struct ccw_device*,int) ;
 int cio_clear (struct subchannel*) ;
 int cio_start (struct subchannel*,struct ccw1*,int ) ;
 int memset (int *,int ,int) ;
 struct subchannel* to_subchannel (int ) ;

__attribute__((used)) static void ccwreq_do(struct ccw_device *cdev)
{
 struct ccw_request *req = &cdev->private->req;
 struct subchannel *sch = to_subchannel(cdev->dev.parent);
 struct ccw1 *cp = req->cp;
 int rc = -EACCES;

 while (req->mask) {
  if (req->retries-- == 0) {

   ccwreq_next_path(cdev);
   continue;
  }

  memset(&cdev->private->irb, 0, sizeof(struct irb));
  rc = cio_start(sch, cp, (u8) req->mask);
  if (rc == 0) {

   ccw_device_set_timeout(cdev, req->timeout);
   return;
  }
  if (rc == -ENODEV) {

   break;
  }
  if (rc == -EACCES) {

   ccwreq_next_path(cdev);
   continue;
  }

  rc = cio_clear(sch);
  if (rc)
   break;
  return;
 }
 ccwreq_stop(cdev, rc);
}
