
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct soc_camera_link {int dummy; } ;
struct soc_camera_host {TYPE_2__* ops; } ;
struct TYPE_6__ {int parent; } ;
struct soc_camera_device {TYPE_3__ dev; struct file* streamer; TYPE_1__* vdev; int use_count; } ;
struct file {struct soc_camera_device* private_data; } ;
struct TYPE_5__ {int owner; int (* remove ) (struct soc_camera_device*) ;} ;
struct TYPE_4__ {int dev; } ;


 int dev_dbg (TYPE_3__*,char*) ;
 int module_put (int ) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_suspend (int *) ;
 int soc_camera_power_set (struct soc_camera_device*,struct soc_camera_link*,int ) ;
 int stub1 (struct soc_camera_device*) ;
 struct soc_camera_host* to_soc_camera_host (int ) ;
 struct soc_camera_link* to_soc_camera_link (struct soc_camera_device*) ;

__attribute__((used)) static int soc_camera_close(struct file *file)
{
 struct soc_camera_device *icd = file->private_data;
 struct soc_camera_host *ici = to_soc_camera_host(icd->dev.parent);

 icd->use_count--;
 if (!icd->use_count) {
  struct soc_camera_link *icl = to_soc_camera_link(icd);

  pm_runtime_suspend(&icd->vdev->dev);
  pm_runtime_disable(&icd->vdev->dev);

  ici->ops->remove(icd);

  soc_camera_power_set(icd, icl, 0);
 }

 if (icd->streamer == file)
  icd->streamer = ((void*)0);

 module_put(ici->ops->owner);

 dev_dbg(&icd->dev, "camera device close\n");

 return 0;
}
