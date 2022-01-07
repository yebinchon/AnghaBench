
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int ena; } ;
struct TYPE_8__ {int scsw; TYPE_2__ pmcw; } ;
struct subchannel {TYPE_3__ schib; } ;
struct TYPE_6__ {int parent; } ;
struct ccw_device {TYPE_5__* private; TYPE_1__ dev; } ;
struct TYPE_9__ {int devno; int ssid; } ;
struct TYPE_10__ {int iretry; TYPE_4__ dev_id; } ;


 int CIO_MSG_EVENT (int ,char*,int ,int ) ;
 int EBUSY ;
 int EINVAL ;
 int EIO ;
 int ENODEV ;
 int SCSW_ACTL_CLEAR_PEND ;
 int SCSW_ACTL_HALT_PEND ;
 int cio_cancel (struct subchannel*) ;
 int cio_clear (struct subchannel*) ;
 int cio_halt (struct subchannel*) ;
 scalar_t__ cio_update_schib (struct subchannel*) ;
 int scsw_actl (int *) ;
 int scsw_is_tm (int *) ;
 struct subchannel* to_subchannel (int ) ;

int
ccw_device_cancel_halt_clear(struct ccw_device *cdev)
{
 struct subchannel *sch;
 int ret;

 sch = to_subchannel(cdev->dev.parent);
 if (cio_update_schib(sch))
  return -ENODEV;
 if (!sch->schib.pmcw.ena)

  return 0;

 if (!(scsw_actl(&sch->schib.scsw) & SCSW_ACTL_HALT_PEND) &&
     !(scsw_actl(&sch->schib.scsw) & SCSW_ACTL_CLEAR_PEND)) {
  if (!scsw_is_tm(&sch->schib.scsw)) {
   ret = cio_cancel(sch);
   if (ret != -EINVAL)
    return ret;
  }


  cdev->private->iretry = 3;
 }
 if (!(scsw_actl(&sch->schib.scsw) & SCSW_ACTL_CLEAR_PEND)) {

  if (cdev->private->iretry) {
   cdev->private->iretry--;
   ret = cio_halt(sch);
   if (ret != -EBUSY)
    return (ret == 0) ? -EBUSY : ret;
  }

  cdev->private->iretry = 255;
 }

 if (cdev->private->iretry) {
  cdev->private->iretry--;
  ret = cio_clear (sch);
  return (ret == 0) ? -EBUSY : ret;
 }

 CIO_MSG_EVENT(0, "0.%x.%04x: could not stop I/O\n",
        cdev->private->dev_id.ssid, cdev->private->dev_id.devno);
 return -EIO;
}
