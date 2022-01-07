
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct soc_camera_host {struct pxa_camera_dev* priv; } ;
struct TYPE_2__ {int parent; } ;
struct soc_camera_device {int devnum; TYPE_1__ dev; } ;
struct pxa_camera_dev {struct soc_camera_device* icd; } ;


 int EBUSY ;
 int dev_info (int ,char*,int ) ;
 int pxa_camera_activate (struct pxa_camera_dev*) ;
 struct soc_camera_host* to_soc_camera_host (int ) ;

__attribute__((used)) static int pxa_camera_add_device(struct soc_camera_device *icd)
{
 struct soc_camera_host *ici = to_soc_camera_host(icd->dev.parent);
 struct pxa_camera_dev *pcdev = ici->priv;

 if (pcdev->icd)
  return -EBUSY;

 pxa_camera_activate(pcdev);

 pcdev->icd = icd;

 dev_info(icd->dev.parent, "PXA Camera driver attached to camera %d\n",
   icd->devnum);

 return 0;
}
