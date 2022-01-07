
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_capability {int capabilities; int version; int bus_info; int card; int driver; } ;
struct s2255_fh {struct s2255_dev* dev; } ;
struct s2255_dev {int udev; } ;
struct file {struct s2255_fh* private_data; } ;


 int S2255_VERSION ;
 int V4L2_CAP_STREAMING ;
 int V4L2_CAP_VIDEO_CAPTURE ;
 int strlcpy (int ,char*,int) ;
 int usb_make_path (int ,int ,int) ;

__attribute__((used)) static int vidioc_querycap(struct file *file, void *priv,
      struct v4l2_capability *cap)
{
 struct s2255_fh *fh = file->private_data;
 struct s2255_dev *dev = fh->dev;
 strlcpy(cap->driver, "s2255", sizeof(cap->driver));
 strlcpy(cap->card, "s2255", sizeof(cap->card));
 usb_make_path(dev->udev, cap->bus_info, sizeof(cap->bus_info));
 cap->version = S2255_VERSION;
 cap->capabilities = V4L2_CAP_VIDEO_CAPTURE | V4L2_CAP_STREAMING;
 return 0;
}
