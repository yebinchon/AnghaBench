
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct ccw_request {int mask; int lpm; int maxretries; int retries; int singlepath; } ;
struct ccw_device {TYPE_1__* private; } ;
struct TYPE_2__ {struct ccw_request req; } ;


 int lpm_adjust (int,int ) ;

__attribute__((used)) static u16 ccwreq_next_path(struct ccw_device *cdev)
{
 struct ccw_request *req = &cdev->private->req;

 if (!req->singlepath) {
  req->mask = 0;
  goto out;
 }
 req->retries = req->maxretries;
 req->mask = lpm_adjust(req->mask >>= 1, req->lpm);
out:
 return req->mask;
}
