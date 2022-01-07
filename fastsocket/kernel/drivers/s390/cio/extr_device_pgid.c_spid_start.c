
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ccw_request {int lpm; int singlepath; int callback; int maxretries; int timeout; } ;
struct ccw_device {TYPE_1__* private; } ;
struct TYPE_2__ {struct ccw_request req; } ;


 int PGID_RETRIES ;
 int PGID_TIMEOUT ;
 int memset (struct ccw_request*,int ,int) ;
 int spid_callback ;
 int spid_do (struct ccw_device*) ;

__attribute__((used)) static void spid_start(struct ccw_device *cdev)
{
 struct ccw_request *req = &cdev->private->req;


 memset(req, 0, sizeof(*req));
 req->timeout = PGID_TIMEOUT;
 req->maxretries = PGID_RETRIES;
 req->lpm = 0x80;
 req->singlepath = 1;
 req->callback = spid_callback;
 spid_do(cdev);
}
