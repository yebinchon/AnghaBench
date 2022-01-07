
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int dev; } ;
struct soc_camera_host {TYPE_2__ v4l2_dev; struct sh_mobile_ceu_dev* priv; } ;
struct TYPE_6__ {int parent; } ;
struct soc_camera_device {int devnum; TYPE_3__ dev; } ;
struct sh_mobile_ceu_dev {struct soc_camera_device* icd; int lock; TYPE_1__* active; } ;
struct TYPE_4__ {int done; int state; int queue; } ;


 int BUG_ON (int) ;
 int CAPSR ;
 int CEIER ;
 int VIDEOBUF_ERROR ;
 int ceu_write (struct sh_mobile_ceu_dev*,int ,int) ;
 int dev_info (int ,char*,int ) ;
 int list_del (int *) ;
 int pm_runtime_put_sync (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct soc_camera_host* to_soc_camera_host (int ) ;
 int wake_up_all (int *) ;

__attribute__((used)) static void sh_mobile_ceu_remove_device(struct soc_camera_device *icd)
{
 struct soc_camera_host *ici = to_soc_camera_host(icd->dev.parent);
 struct sh_mobile_ceu_dev *pcdev = ici->priv;
 unsigned long flags;

 BUG_ON(icd != pcdev->icd);


 ceu_write(pcdev, CEIER, 0);
 ceu_write(pcdev, CAPSR, 1 << 16);


 spin_lock_irqsave(&pcdev->lock, flags);
 if (pcdev->active) {
  list_del(&pcdev->active->queue);
  pcdev->active->state = VIDEOBUF_ERROR;
  wake_up_all(&pcdev->active->done);
  pcdev->active = ((void*)0);
 }
 spin_unlock_irqrestore(&pcdev->lock, flags);

 pm_runtime_put_sync(ici->v4l2_dev.dev);

 dev_info(icd->dev.parent,
   "SuperH Mobile CEU driver detached from camera %d\n",
   icd->devnum);

 pcdev->icd = ((void*)0);
}
