
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ccw_request {int lpm; } ;
struct ccw_device {TYPE_1__* private; } ;
struct TYPE_2__ {int pgid_valid_mask; struct ccw_request req; } ;


 int EACCES ;
 int snid_do (struct ccw_device*) ;
 int snid_done (struct ccw_device*,int) ;

__attribute__((used)) static void snid_callback(struct ccw_device *cdev, void *data, int rc)
{
 struct ccw_request *req = &cdev->private->req;

 if (rc == 0)
  cdev->private->pgid_valid_mask |= req->lpm;
 else if (rc != -EACCES)
  goto err;
 req->lpm >>= 1;
 snid_do(cdev);
 return;

err:
 snid_done(cdev, rc);
}
