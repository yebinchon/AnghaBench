
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int dev; } ;
struct soc_camera_host {TYPE_2__ v4l2_dev; struct sh_mobile_ceu_dev* priv; } ;
struct TYPE_3__ {int parent; } ;
struct soc_camera_device {int devnum; TYPE_1__ dev; } ;
struct sh_mobile_ceu_dev {struct soc_camera_device* icd; } ;


 int CAPSR ;
 int CSTSR ;
 int EBUSY ;
 int ceu_read (struct sh_mobile_ceu_dev*,int ) ;
 int ceu_write (struct sh_mobile_ceu_dev*,int ,int) ;
 int dev_info (int ,char*,int ) ;
 int msleep (int) ;
 int pm_runtime_get_sync (int ) ;
 struct soc_camera_host* to_soc_camera_host (int ) ;

__attribute__((used)) static int sh_mobile_ceu_add_device(struct soc_camera_device *icd)
{
 struct soc_camera_host *ici = to_soc_camera_host(icd->dev.parent);
 struct sh_mobile_ceu_dev *pcdev = ici->priv;

 if (pcdev->icd)
  return -EBUSY;

 dev_info(icd->dev.parent,
   "SuperH Mobile CEU driver attached to camera %d\n",
   icd->devnum);

 pm_runtime_get_sync(ici->v4l2_dev.dev);

 ceu_write(pcdev, CAPSR, 1 << 16);
 while (ceu_read(pcdev, CSTSR) & 1)
  msleep(1);

 pcdev->icd = icd;

 return 0;
}
