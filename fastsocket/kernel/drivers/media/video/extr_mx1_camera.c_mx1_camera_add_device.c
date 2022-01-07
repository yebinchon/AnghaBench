
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct soc_camera_host {struct mx1_camera_dev* priv; } ;
struct TYPE_2__ {int parent; } ;
struct soc_camera_device {int devnum; TYPE_1__ dev; } ;
struct mx1_camera_dev {struct soc_camera_device* icd; } ;


 int EBUSY ;
 int dev_info (int ,char*,int ) ;
 int mx1_camera_activate (struct mx1_camera_dev*) ;
 struct soc_camera_host* to_soc_camera_host (int ) ;

__attribute__((used)) static int mx1_camera_add_device(struct soc_camera_device *icd)
{
 struct soc_camera_host *ici = to_soc_camera_host(icd->dev.parent);
 struct mx1_camera_dev *pcdev = ici->priv;
 int ret;

 if (pcdev->icd) {
  ret = -EBUSY;
  goto ebusy;
 }

 dev_info(icd->dev.parent, "MX1 Camera driver attached to camera %d\n",
   icd->devnum);

 mx1_camera_activate(pcdev);

 pcdev->icd = icd;

ebusy:
 return ret;
}
