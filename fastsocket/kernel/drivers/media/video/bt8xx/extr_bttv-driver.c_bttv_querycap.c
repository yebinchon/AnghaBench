
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_capability {int capabilities; int version; int bus_info; int card; int driver; } ;
struct file {int dummy; } ;
struct bttv_fh {struct bttv* btv; } ;
struct TYPE_4__ {int pci; } ;
struct bttv {scalar_t__ tuner_type; scalar_t__ has_saa6588; TYPE_2__ c; TYPE_1__* video_dev; } ;
struct TYPE_3__ {char* name; } ;


 int BTTV_VERSION_CODE ;
 int EINVAL ;
 scalar_t__ TUNER_ABSENT ;
 int V4L2_CAP_RDS_CAPTURE ;
 int V4L2_CAP_READWRITE ;
 int V4L2_CAP_STREAMING ;
 int V4L2_CAP_TUNER ;
 int V4L2_CAP_VBI_CAPTURE ;
 int V4L2_CAP_VIDEO_CAPTURE ;
 int V4L2_CAP_VIDEO_OVERLAY ;
 scalar_t__ no_overlay ;
 char* pci_name (int ) ;
 int snprintf (int ,int,char*,char*) ;
 int strlcpy (int ,char*,int) ;
 scalar_t__ v4l2 ;

__attribute__((used)) static int bttv_querycap(struct file *file, void *priv,
    struct v4l2_capability *cap)
{
 struct bttv_fh *fh = priv;
 struct bttv *btv = fh->btv;

 if (0 == v4l2)
  return -EINVAL;

 strlcpy(cap->driver, "bttv", sizeof(cap->driver));
 strlcpy(cap->card, btv->video_dev->name, sizeof(cap->card));
 snprintf(cap->bus_info, sizeof(cap->bus_info),
   "PCI:%s", pci_name(btv->c.pci));
 cap->version = BTTV_VERSION_CODE;
 cap->capabilities =
  V4L2_CAP_VIDEO_CAPTURE |
  V4L2_CAP_VBI_CAPTURE |
  V4L2_CAP_READWRITE |
  V4L2_CAP_STREAMING;
 if (no_overlay <= 0)
  cap->capabilities |= V4L2_CAP_VIDEO_OVERLAY;





 if (btv->has_saa6588)
  cap->capabilities |= V4L2_CAP_RDS_CAPTURE;
 if (btv->tuner_type != TUNER_ABSENT)
  cap->capabilities |= V4L2_CAP_TUNER;
 return 0;
}
