
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct soc_camera_host {struct mx3_camera_dev* priv; } ;
struct TYPE_2__ {int parent; } ;
struct soc_camera_device {int devnum; TYPE_1__ dev; } ;
struct mx3_camera_dev {struct soc_camera_device* icd; } ;


 int EBUSY ;
 int dev_info (int ,char*,int ) ;
 int mx3_camera_activate (struct mx3_camera_dev*,struct soc_camera_device*) ;
 struct soc_camera_host* to_soc_camera_host (int ) ;

__attribute__((used)) static int mx3_camera_add_device(struct soc_camera_device *icd)
{
 struct soc_camera_host *ici = to_soc_camera_host(icd->dev.parent);
 struct mx3_camera_dev *mx3_cam = ici->priv;

 if (mx3_cam->icd)
  return -EBUSY;

 mx3_camera_activate(mx3_cam, icd);

 mx3_cam->icd = icd;

 dev_info(icd->dev.parent, "MX3 Camera driver attached to camera %d\n",
   icd->devnum);

 return 0;
}
