
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int pam; } ;
struct TYPE_8__ {TYPE_2__ pmcw; } ;
struct subchannel {TYPE_3__ schib; int lpm; scalar_t__ vpm; } ;
struct ccw_request {int lpm; int singlepath; int callback; int filter; int maxretries; int timeout; } ;
struct TYPE_6__ {int parent; } ;
struct ccw_device {TYPE_5__* private; TYPE_1__ dev; } ;
struct ccw_dev_id {int dummy; } ;
struct TYPE_9__ {scalar_t__ pgroup; } ;
struct TYPE_10__ {TYPE_4__ flags; struct ccw_dev_id dev_id; struct ccw_request req; } ;


 int CIO_HEX_EVENT (int,struct ccw_dev_id*,int) ;
 int CIO_TRACE_EVENT (int,char*) ;
 int PGID_RETRIES ;
 int PGID_TIMEOUT ;
 int memset (struct ccw_request*,int ,int) ;
 int nop_callback ;
 int nop_do (struct ccw_device*) ;
 int nop_filter ;
 int snid_callback ;
 int snid_do (struct ccw_device*) ;
 struct subchannel* to_subchannel (int ) ;

__attribute__((used)) static void verify_start(struct ccw_device *cdev)
{
 struct subchannel *sch = to_subchannel(cdev->dev.parent);
 struct ccw_request *req = &cdev->private->req;
 struct ccw_dev_id *devid = &cdev->private->dev_id;

 sch->vpm = 0;
 sch->lpm = sch->schib.pmcw.pam;

 memset(req, 0, sizeof(*req));
 req->timeout = PGID_TIMEOUT;
 req->maxretries = PGID_RETRIES;
 req->lpm = 0x80;
 req->singlepath = 1;
 if (cdev->private->flags.pgroup) {
  CIO_TRACE_EVENT(4, "snid");
  CIO_HEX_EVENT(4, devid, sizeof(*devid));
  req->callback = snid_callback;
  snid_do(cdev);
 } else {
  CIO_TRACE_EVENT(4, "nop");
  CIO_HEX_EVENT(4, devid, sizeof(*devid));
  req->filter = nop_filter;
  req->callback = nop_callback;
  nop_do(cdev);
 }
}
