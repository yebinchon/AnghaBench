
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct v4l2_capability {int capabilities; int version; scalar_t__ bus_info; scalar_t__ card; scalar_t__ driver; } ;
struct gspca_dev {int usb_lock; TYPE_3__* dev; TYPE_1__* sd_desc; int present; } ;
struct file {int dummy; } ;
struct TYPE_5__ {int idProduct; int idVendor; } ;
struct TYPE_6__ {TYPE_2__ descriptor; int * product; } ;
struct TYPE_4__ {int * name; } ;


 int DRIVER_VERSION_NUMBER ;
 int ENODEV ;
 int ERESTARTSYS ;
 int V4L2_CAP_READWRITE ;
 int V4L2_CAP_STREAMING ;
 int V4L2_CAP_VIDEO_CAPTURE ;
 int le16_to_cpu (int ) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int snprintf (char*,int,char*,int,int) ;
 int strncpy (char*,int *,int) ;
 int usb_make_path (TYPE_3__*,char*,int) ;

__attribute__((used)) static int vidioc_querycap(struct file *file, void *priv,
      struct v4l2_capability *cap)
{
 struct gspca_dev *gspca_dev = priv;
 int ret;


 if (mutex_lock_interruptible(&gspca_dev->usb_lock))
  return -ERESTARTSYS;
 if (!gspca_dev->present) {
  ret = -ENODEV;
  goto out;
 }
 strncpy((char *) cap->driver, gspca_dev->sd_desc->name,
   sizeof cap->driver);
 if (gspca_dev->dev->product != ((void*)0)) {
  strncpy((char *) cap->card, gspca_dev->dev->product,
   sizeof cap->card);
 } else {
  snprintf((char *) cap->card, sizeof cap->card,
   "USB Camera (%04x:%04x)",
   le16_to_cpu(gspca_dev->dev->descriptor.idVendor),
   le16_to_cpu(gspca_dev->dev->descriptor.idProduct));
 }
 usb_make_path(gspca_dev->dev, (char *) cap->bus_info,
   sizeof(cap->bus_info));
 cap->version = DRIVER_VERSION_NUMBER;
 cap->capabilities = V4L2_CAP_VIDEO_CAPTURE
     | V4L2_CAP_STREAMING
     | V4L2_CAP_READWRITE;
 ret = 0;
out:
 mutex_unlock(&gspca_dev->usb_lock);
 return ret;
}
