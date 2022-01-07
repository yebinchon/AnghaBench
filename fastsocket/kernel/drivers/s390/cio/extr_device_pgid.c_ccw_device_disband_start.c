
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_7__ {int pam; } ;
struct TYPE_8__ {TYPE_2__ pmcw; } ;
struct subchannel {int opm; TYPE_3__ schib; } ;
struct ccw_request {int lpm; int singlepath; int callback; int maxretries; int timeout; } ;
struct TYPE_6__ {int parent; } ;
struct ccw_device {TYPE_5__* private; TYPE_1__ dev; } ;
struct TYPE_9__ {scalar_t__ mpath; } ;
struct TYPE_10__ {TYPE_4__ flags; int dev_id; struct ccw_request req; } ;


 int CIO_HEX_EVENT (int,int *,int) ;
 int CIO_TRACE_EVENT (int,char*) ;
 int PGID_RETRIES ;
 int PGID_TIMEOUT ;
 int SPID_FUNC_DISBAND ;
 int SPID_FUNC_MULTI_PATH ;
 int ccw_request_start (struct ccw_device*) ;
 int disband_callback ;
 int memset (struct ccw_request*,int ,int) ;
 int spid_build_cp (struct ccw_device*,int ) ;
 struct subchannel* to_subchannel (int ) ;

void ccw_device_disband_start(struct ccw_device *cdev)
{
 struct subchannel *sch = to_subchannel(cdev->dev.parent);
 struct ccw_request *req = &cdev->private->req;
 u8 fn;

 CIO_TRACE_EVENT(4, "disb");
 CIO_HEX_EVENT(4, &cdev->private->dev_id, sizeof(cdev->private->dev_id));

 memset(req, 0, sizeof(*req));
 req->timeout = PGID_TIMEOUT;
 req->maxretries = PGID_RETRIES;
 req->lpm = sch->schib.pmcw.pam & sch->opm;
 req->singlepath = 1;
 req->callback = disband_callback;
 fn = SPID_FUNC_DISBAND;
 if (cdev->private->flags.mpath)
  fn |= SPID_FUNC_MULTI_PATH;
 spid_build_cp(cdev, fn);
 ccw_request_start(cdev);
}
