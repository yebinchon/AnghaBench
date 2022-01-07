
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int readbuffers; } ;
struct TYPE_5__ {TYPE_1__ capture; } ;
struct v4l2_streamparm {TYPE_2__ parm; } ;
struct gspca_dev {int nbufread; int usb_err; int usb_lock; TYPE_3__* sd_desc; scalar_t__ present; } ;
struct file {int dummy; } ;
struct TYPE_6__ {int (* set_streamparm ) (struct gspca_dev*,struct v4l2_streamparm*) ;} ;


 int ENODEV ;
 int ERESTARTSYS ;
 int GSPCA_MAX_FRAMES ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct gspca_dev*,struct v4l2_streamparm*) ;

__attribute__((used)) static int vidioc_s_parm(struct file *filp, void *priv,
   struct v4l2_streamparm *parm)
{
 struct gspca_dev *gspca_dev = priv;
 int n;

 n = parm->parm.capture.readbuffers;
 if (n == 0 || n >= GSPCA_MAX_FRAMES)
  parm->parm.capture.readbuffers = gspca_dev->nbufread;
 else
  gspca_dev->nbufread = n;

 if (gspca_dev->sd_desc->set_streamparm) {
  int ret;

  if (mutex_lock_interruptible(&gspca_dev->usb_lock))
   return -ERESTARTSYS;
  if (gspca_dev->present) {
   gspca_dev->usb_err = 0;
   gspca_dev->sd_desc->set_streamparm(gspca_dev, parm);
   ret = gspca_dev->usb_err;
  } else {
   ret = -ENODEV;
  }
  mutex_unlock(&gspca_dev->usb_lock);
  return ret;
 }

 return 0;
}
