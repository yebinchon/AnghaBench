
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vivi_fh {struct vivi_dev* dev; } ;
struct TYPE_2__ {int name; } ;
struct vivi_dev {TYPE_1__ v4l2_dev; } ;
struct v4l2_capability {int capabilities; int version; int bus_info; int card; int driver; } ;
struct file {int dummy; } ;


 int V4L2_CAP_READWRITE ;
 int V4L2_CAP_STREAMING ;
 int V4L2_CAP_VIDEO_CAPTURE ;
 int VIVI_VERSION ;
 int strcpy (int ,char*) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static int vidioc_querycap(struct file *file, void *priv,
     struct v4l2_capability *cap)
{
 struct vivi_fh *fh = priv;
 struct vivi_dev *dev = fh->dev;

 strcpy(cap->driver, "vivi");
 strcpy(cap->card, "vivi");
 strlcpy(cap->bus_info, dev->v4l2_dev.name, sizeof(cap->bus_info));
 cap->version = VIVI_VERSION;
 cap->capabilities = V4L2_CAP_VIDEO_CAPTURE |
    V4L2_CAP_STREAMING |
    V4L2_CAP_READWRITE;
 return 0;
}
