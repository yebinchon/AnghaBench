
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct video_device_shadow {int * lock; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_mbus_framefmt {int field; int colorspace; int height; int width; } ;
struct soc_camera_link {int (* add_device ) (struct soc_camera_link*,TYPE_3__*) ;int regulators; int num_regulators; int (* del_device ) (struct soc_camera_link*) ;scalar_t__ board_info; scalar_t__ module_name; int (* reset ) (int ) ;} ;
struct soc_camera_host {TYPE_2__* ops; } ;
struct TYPE_7__ {int kobj; } ;
struct soc_camera_device {int vdev; int video_lock; TYPE_3__ dev; int field; int colorspace; int user_height; int user_width; int pdev; } ;
struct device {TYPE_1__* driver; int kobj; int parent; } ;
struct TYPE_6__ {int (* add ) (struct soc_camera_device*) ;int (* remove ) (struct soc_camera_device*) ;} ;
struct TYPE_5__ {int owner; } ;


 int EINVAL ;
 int V4L2_FIELD_ANY ;
 int dev_get_drvdata (struct device*) ;
 int dev_info (struct device*,char*,int ) ;
 int dev_name (struct device*) ;
 int dev_warn (TYPE_3__*,char*) ;
 int g_mbus_fmt ;
 int module_put (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regulator_bulk_free (int ,int ) ;
 int regulator_bulk_get (int ,int ,int ) ;
 int request_module (scalar_t__) ;
 int soc_camera_free_i2c (struct soc_camera_device*) ;
 int soc_camera_free_user_formats (struct soc_camera_device*) ;
 int soc_camera_init_i2c (struct soc_camera_device*,struct soc_camera_link*) ;
 int soc_camera_init_user_formats (struct soc_camera_device*) ;
 int soc_camera_power_set (struct soc_camera_device*,struct soc_camera_link*,int) ;
 struct v4l2_subdev* soc_camera_to_subdev (struct soc_camera_device*) ;
 int soc_camera_video_start (struct soc_camera_device*) ;
 int stub1 (int ) ;
 int stub2 (struct soc_camera_device*) ;
 int stub3 (struct soc_camera_link*,TYPE_3__*) ;
 int stub4 (struct soc_camera_link*) ;
 int stub5 (struct soc_camera_device*) ;
 int stub6 (struct soc_camera_link*) ;
 int stub7 (struct soc_camera_device*) ;
 scalar_t__ sysfs_create_link (int *,int *,char*) ;
 struct device* to_soc_camera_control (struct soc_camera_device*) ;
 struct soc_camera_device* to_soc_camera_dev (struct device*) ;
 struct soc_camera_host* to_soc_camera_host (int ) ;
 struct soc_camera_link* to_soc_camera_link (struct soc_camera_device*) ;
 int try_module_get (int ) ;
 int v4l2_subdev_call (struct v4l2_subdev*,int ,int ,struct v4l2_mbus_framefmt*) ;
 int video ;
 int video_dev_create (struct soc_camera_device*) ;
 int video_device_release (int ) ;
 struct video_device_shadow* video_device_shadow_get (int ) ;

__attribute__((used)) static int soc_camera_probe(struct device *dev)
{
 struct soc_camera_device *icd = to_soc_camera_dev(dev);
 struct soc_camera_host *ici = to_soc_camera_host(dev->parent);
 struct soc_camera_link *icl = to_soc_camera_link(icd);
 struct device *control = ((void*)0);
 struct v4l2_subdev *sd;
 struct v4l2_mbus_framefmt mf;
 struct video_device_shadow *shvdev;
 int ret;

 dev_info(dev, "Probing %s\n", dev_name(dev));

 ret = regulator_bulk_get(icd->pdev, icl->num_regulators,
     icl->regulators);
 if (ret < 0)
  goto ereg;

 ret = soc_camera_power_set(icd, icl, 1);
 if (ret < 0)
  goto epower;


 if (icl->reset)
  icl->reset(icd->pdev);

 ret = ici->ops->add(icd);
 if (ret < 0)
  goto eadd;


 ret = video_dev_create(icd);
 if (ret < 0)
  goto evdc;


 if (icl->board_info) {
  ret = soc_camera_init_i2c(icd, icl);
  if (ret < 0)
   goto eadddev;
 } else if (!icl->add_device || !icl->del_device) {
  ret = -EINVAL;
  goto eadddev;
 } else {
  if (icl->module_name)
   ret = request_module(icl->module_name);

  ret = icl->add_device(icl, &icd->dev);
  if (ret < 0)
   goto eadddev;





  control = to_soc_camera_control(icd);
  if (!control || !control->driver || !dev_get_drvdata(control) ||
      !try_module_get(control->driver->owner)) {
   icl->del_device(icl);
   goto enodrv;
  }
 }


 ret = soc_camera_init_user_formats(icd);
 if (ret < 0)
  goto eiufmt;

 icd->field = V4L2_FIELD_ANY;

 shvdev = video_device_shadow_get(icd->vdev);
 shvdev->lock = &icd->video_lock;






 mutex_lock(&icd->video_lock);

 ret = soc_camera_video_start(icd);
 if (ret < 0)
  goto evidstart;


 sd = soc_camera_to_subdev(icd);
 if (!v4l2_subdev_call(sd, video, g_mbus_fmt, &mf)) {
  icd->user_width = mf.width;
  icd->user_height = mf.height;
  icd->colorspace = mf.colorspace;
  icd->field = mf.field;
 }


 if (sysfs_create_link(&icd->dev.kobj, &to_soc_camera_control(icd)->kobj,
         "control"))
  dev_warn(&icd->dev, "Failed creating the control symlink\n");

 ici->ops->remove(icd);

 soc_camera_power_set(icd, icl, 0);

 mutex_unlock(&icd->video_lock);

 return 0;

evidstart:
 mutex_unlock(&icd->video_lock);
 soc_camera_free_user_formats(icd);
eiufmt:
 if (icl->board_info) {
  soc_camera_free_i2c(icd);
 } else {
  icl->del_device(icl);
  module_put(control->driver->owner);
 }
enodrv:
eadddev:
 video_device_release(icd->vdev);
evdc:
 ici->ops->remove(icd);
eadd:
 soc_camera_power_set(icd, icl, 0);
epower:
 regulator_bulk_free(icl->num_regulators, icl->regulators);
ereg:
 return ret;
}
