
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct video_device {int dummy; } ;
struct soc_camera_link {int regulators; int num_regulators; int (* del_device ) (struct soc_camera_link*) ;scalar_t__ board_info; } ;
struct soc_camera_device {struct video_device* vdev; } ;
struct device_driver {int owner; } ;
struct device {int parent; } ;
struct TYPE_2__ {struct device_driver* driver; } ;


 int BUG_ON (int) ;
 int module_put (int ) ;
 int regulator_bulk_free (int ,int ) ;
 int soc_camera_free_i2c (struct soc_camera_device*) ;
 int soc_camera_free_user_formats (struct soc_camera_device*) ;
 int stub1 (struct soc_camera_link*) ;
 TYPE_1__* to_soc_camera_control (struct soc_camera_device*) ;
 struct soc_camera_device* to_soc_camera_dev (struct device*) ;
 struct soc_camera_link* to_soc_camera_link (struct soc_camera_device*) ;
 int video_unregister_device (struct video_device*) ;

__attribute__((used)) static int soc_camera_remove(struct device *dev)
{
 struct soc_camera_device *icd = to_soc_camera_dev(dev);
 struct soc_camera_link *icl = to_soc_camera_link(icd);
 struct video_device *vdev = icd->vdev;

 BUG_ON(!dev->parent);

 if (vdev) {
  video_unregister_device(vdev);
  icd->vdev = ((void*)0);
 }

 if (icl->board_info) {
  soc_camera_free_i2c(icd);
 } else {
  struct device_driver *drv = to_soc_camera_control(icd) ?
   to_soc_camera_control(icd)->driver : ((void*)0);
  if (drv) {
   icl->del_device(icl);
   module_put(drv->owner);
  }
 }
 soc_camera_free_user_formats(icd);

 regulator_bulk_free(icl->num_regulators, icl->regulators);

 return 0;
}
