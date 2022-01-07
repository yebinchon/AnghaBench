
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_capability {int capabilities; int version; int bus_info; int card; int driver; } ;
struct file {int dummy; } ;
struct au0828_fh {struct au0828_dev* dev; } ;
struct TYPE_3__ {char* name; } ;
struct TYPE_4__ {char* name; } ;
struct au0828_dev {TYPE_1__ v4l2_dev; TYPE_2__ board; } ;


 int AU0828_VERSION_CODE ;
 int V4L2_CAP_AUDIO ;
 int V4L2_CAP_READWRITE ;
 int V4L2_CAP_STREAMING ;
 int V4L2_CAP_TUNER ;
 int V4L2_CAP_VBI_CAPTURE ;
 int V4L2_CAP_VIDEO_CAPTURE ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static int vidioc_querycap(struct file *file, void *priv,
      struct v4l2_capability *cap)
{
 struct au0828_fh *fh = priv;
 struct au0828_dev *dev = fh->dev;

 strlcpy(cap->driver, "au0828", sizeof(cap->driver));
 strlcpy(cap->card, dev->board.name, sizeof(cap->card));
 strlcpy(cap->bus_info, dev->v4l2_dev.name, sizeof(cap->bus_info));

 cap->version = AU0828_VERSION_CODE;


 cap->capabilities = V4L2_CAP_VIDEO_CAPTURE |
  V4L2_CAP_VBI_CAPTURE |
  V4L2_CAP_AUDIO |
  V4L2_CAP_READWRITE |
  V4L2_CAP_STREAMING |
  V4L2_CAP_TUNER;
 return 0;
}
