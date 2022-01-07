
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct v4l2_rect {scalar_t__ width; scalar_t__ height; int top; int left; } ;
struct v4l2_crop {scalar_t__ type; struct v4l2_rect c; } ;
struct soc_camera_host {TYPE_2__* ops; } ;
struct TYPE_7__ {int parent; } ;
struct TYPE_5__ {scalar_t__* bufs; } ;
struct soc_camera_device {TYPE_3__ dev; TYPE_1__ vb_vidq; } ;
struct file {struct soc_camera_device* private_data; } ;
struct TYPE_6__ {int (* get_crop ) (struct soc_camera_device*,struct v4l2_crop*) ;int (* set_crop ) (struct soc_camera_device*,struct v4l2_crop*) ;} ;


 int EBUSY ;
 int EINVAL ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int dev_dbg (TYPE_3__*,char*,scalar_t__,scalar_t__,int ,int ) ;
 int dev_err (TYPE_3__*,char*) ;
 int stub1 (struct soc_camera_device*,struct v4l2_crop*) ;
 int stub2 (struct soc_camera_device*,struct v4l2_crop*) ;
 struct soc_camera_host* to_soc_camera_host (int ) ;

__attribute__((used)) static int soc_camera_s_crop(struct file *file, void *fh,
        struct v4l2_crop *a)
{
 struct soc_camera_device *icd = file->private_data;
 struct soc_camera_host *ici = to_soc_camera_host(icd->dev.parent);
 struct v4l2_rect *rect = &a->c;
 struct v4l2_crop current_crop;
 int ret;

 if (a->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
  return -EINVAL;

 dev_dbg(&icd->dev, "S_CROP(%ux%u@%u:%u)\n",
  rect->width, rect->height, rect->left, rect->top);


 ret = ici->ops->get_crop(icd, &current_crop);


 if (ret < 0) {
  dev_err(&icd->dev,
   "S_CROP denied: getting current crop failed\n");
 } else if (icd->vb_vidq.bufs[0] &&
     (a->c.width != current_crop.c.width ||
      a->c.height != current_crop.c.height)) {
  dev_err(&icd->dev,
   "S_CROP denied: queue initialised and sizes differ\n");
  ret = -EBUSY;
 } else {
  ret = ici->ops->set_crop(icd, a);
 }

 return ret;
}
