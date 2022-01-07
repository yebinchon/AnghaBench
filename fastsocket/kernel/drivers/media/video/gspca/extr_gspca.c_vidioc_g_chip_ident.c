
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_dbg_chip_ident {int dummy; } ;
struct gspca_dev {int usb_lock; TYPE_1__* sd_desc; scalar_t__ present; scalar_t__ usb_err; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int (* get_chip_ident ) (struct gspca_dev*,struct v4l2_dbg_chip_ident*) ;} ;


 int EINVAL ;
 int ENODEV ;
 int ERESTARTSYS ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct gspca_dev*,struct v4l2_dbg_chip_ident*) ;

__attribute__((used)) static int vidioc_g_chip_ident(struct file *file, void *priv,
   struct v4l2_dbg_chip_ident *chip)
{
 int ret;
 struct gspca_dev *gspca_dev = priv;

 if (!gspca_dev->sd_desc->get_chip_ident)
  return -EINVAL;

 if (mutex_lock_interruptible(&gspca_dev->usb_lock))
  return -ERESTARTSYS;
 gspca_dev->usb_err = 0;
 if (gspca_dev->present)
  ret = gspca_dev->sd_desc->get_chip_ident(gspca_dev, chip);
 else
  ret = -ENODEV;
 mutex_unlock(&gspca_dev->usb_lock);

 return ret;
}
