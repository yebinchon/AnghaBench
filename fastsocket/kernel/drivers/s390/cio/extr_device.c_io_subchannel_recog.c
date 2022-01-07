
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int ssid; } ;
struct TYPE_5__ {int dev; } ;
struct TYPE_6__ {TYPE_1__ pmcw; } ;
struct subchannel {int lock; TYPE_4__ schid; TYPE_2__ schib; } ;
struct TYPE_7__ {int ssid; int devno; } ;
struct ccw_device_private {int timer; int wait_q; int cmb_list; int state; TYPE_4__ schid; TYPE_3__ dev_id; } ;
struct ccw_device {struct ccw_device_private* private; int ccwlock; } ;


 int DEV_STATE_NOT_OPER ;
 int INIT_LIST_HEAD (int *) ;
 int atomic_inc (int *) ;
 int ccw_device_init_count ;
 int ccw_device_recognition (struct ccw_device*) ;
 int init_timer (int *) ;
 int init_waitqueue_head (int *) ;
 int sch_set_cdev (struct subchannel*,struct ccw_device*) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

__attribute__((used)) static void io_subchannel_recog(struct ccw_device *cdev, struct subchannel *sch)
{
 struct ccw_device_private *priv;

 cdev->ccwlock = sch->lock;


 priv = cdev->private;
 priv->dev_id.devno = sch->schib.pmcw.dev;
 priv->dev_id.ssid = sch->schid.ssid;
 priv->schid = sch->schid;
 priv->state = DEV_STATE_NOT_OPER;
 INIT_LIST_HEAD(&priv->cmb_list);
 init_waitqueue_head(&priv->wait_q);
 init_timer(&priv->timer);


 atomic_inc(&ccw_device_init_count);


 spin_lock_irq(sch->lock);
 sch_set_cdev(sch, cdev);
 ccw_device_recognition(cdev);
 spin_unlock_irq(sch->lock);
}
