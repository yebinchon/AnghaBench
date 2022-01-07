
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct device {int dummy; } ;
struct b3dfg_dev {unsigned long cstate_tstamp; int cstate_lock; int buffer_waitqueue; TYPE_1__* pdev; } ;
struct TYPE_2__ {struct device dev; } ;


 int B3D_REG_WAND_STS ;
 scalar_t__ b3dfg_read32 (struct b3dfg_dev*,int ) ;
 int dev_dbg (struct device*,char*,scalar_t__) ;
 int dev_warn (struct device*,char*) ;
 int handle_cstate_unplug (struct b3dfg_dev*) ;
 unsigned long jiffies_64 ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void handle_cstate_change(struct b3dfg_dev *fgdev)
{
 u32 cstate = b3dfg_read32(fgdev, B3D_REG_WAND_STS);
 unsigned long when;
 struct device *dev = &fgdev->pdev->dev;

 dev_dbg(dev, "cable state change: %u\n", cstate);
 if (cstate) {
  dev_warn(dev, "ignoring unexpected plug event\n");
  return;
 }
 handle_cstate_unplug(fgdev);






 spin_lock(&fgdev->cstate_lock);
 when = jiffies_64;
 if (when <= fgdev->cstate_tstamp)
  when = fgdev->cstate_tstamp + 1;
 fgdev->cstate_tstamp = when;
 wake_up_interruptible(&fgdev->buffer_waitqueue);
 spin_unlock(&fgdev->cstate_lock);
}
