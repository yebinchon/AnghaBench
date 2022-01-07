
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_12__ {int ssid; } ;
struct TYPE_8__ {int ena; int dev; } ;
struct TYPE_9__ {TYPE_2__ pmcw; } ;
struct subchannel {int lock; TYPE_6__ schid; int dev; TYPE_3__ schib; int reg_mutex; } ;
struct TYPE_11__ {int parent; } ;
struct ccw_device {int ccwlock; TYPE_4__* private; TYPE_5__ dev; } ;
typedef scalar_t__ addr_t ;
struct TYPE_7__ {int devno; int ssid; } ;
struct TYPE_10__ {TYPE_6__ schid; TYPE_1__ dev_id; } ;


 int CIO_MSG_EVENT (int ,char*,int ,int ,int ,int ,int) ;
 int DPM_ORDER_PARENT_BEFORE_DEV ;
 int EBUSY ;
 int ENODEV ;
 int cio_disable_subchannel (struct subchannel*) ;
 int cio_enable_subchannel (struct subchannel*,int ) ;
 int css_schedule_eval (TYPE_6__) ;
 int css_update_ssd_info (struct subchannel*) ;
 int device_move (TYPE_5__*,int *,int ) ;
 int get_device (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_device (int *) ;
 int sch_is_pseudo_sch (struct subchannel*) ;
 int sch_set_cdev (struct subchannel*,struct ccw_device*) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;
 struct subchannel* to_subchannel (int ) ;

__attribute__((used)) static int ccw_device_move_to_sch(struct ccw_device *cdev,
      struct subchannel *sch)
{
 struct subchannel *old_sch;
 int rc, old_enabled = 0;

 old_sch = to_subchannel(cdev->dev.parent);

 if (!get_device(&sch->dev))
  return -ENODEV;

 if (!sch_is_pseudo_sch(old_sch)) {
  spin_lock_irq(old_sch->lock);
  old_enabled = old_sch->schib.pmcw.ena;
  rc = 0;
  if (old_enabled)
   rc = cio_disable_subchannel(old_sch);
  spin_unlock_irq(old_sch->lock);
  if (rc == -EBUSY) {

   put_device(&sch->dev);
   return rc;
  }
 }

 mutex_lock(&sch->reg_mutex);
 rc = device_move(&cdev->dev, &sch->dev, DPM_ORDER_PARENT_BEFORE_DEV);
 mutex_unlock(&sch->reg_mutex);
 if (rc) {
  CIO_MSG_EVENT(0, "device_move(0.%x.%04x,0.%x.%04x)=%d\n",
         cdev->private->dev_id.ssid,
         cdev->private->dev_id.devno, sch->schid.ssid,
         sch->schib.pmcw.dev, rc);
  if (old_enabled) {

   spin_lock_irq(old_sch->lock);
   cio_enable_subchannel(old_sch, (u32)(addr_t)old_sch);
   spin_unlock_irq(old_sch->lock);
  }

  put_device(&sch->dev);
  return rc;
 }

 if (!sch_is_pseudo_sch(old_sch)) {
  spin_lock_irq(old_sch->lock);
  sch_set_cdev(old_sch, ((void*)0));
  spin_unlock_irq(old_sch->lock);
  css_schedule_eval(old_sch->schid);
 }

 put_device(&old_sch->dev);

 spin_lock_irq(sch->lock);
 cdev->private->schid = sch->schid;
 cdev->ccwlock = sch->lock;
 if (!sch_is_pseudo_sch(sch))
  sch_set_cdev(sch, cdev);
 spin_unlock_irq(sch->lock);
 if (!sch_is_pseudo_sch(sch))
  css_update_ssd_info(sch);
 return 0;
}
