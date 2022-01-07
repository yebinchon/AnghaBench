
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_capability {int capabilities; int version; int bus_info; int card; int driver; } ;
struct saa7134_fh {struct saa7134_dev* dev; } ;
struct saa7134_dev {unsigned int tuner_type; size_t board; scalar_t__ has_rds; int pci; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int name; } ;


 int SAA7134_VERSION_CODE ;
 unsigned int TUNER_ABSENT ;
 unsigned int UNSET ;
 int V4L2_CAP_RDS_CAPTURE ;
 int V4L2_CAP_READWRITE ;
 int V4L2_CAP_STREAMING ;
 int V4L2_CAP_TUNER ;
 int V4L2_CAP_VBI_CAPTURE ;
 int V4L2_CAP_VIDEO_CAPTURE ;
 int V4L2_CAP_VIDEO_OVERLAY ;
 char* pci_name (int ) ;
 TYPE_1__* saa7134_boards ;
 scalar_t__ saa7134_no_overlay ;
 int sprintf (int ,char*,char*) ;
 int strcpy (int ,char*) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static int saa7134_querycap(struct file *file, void *priv,
     struct v4l2_capability *cap)
{
 struct saa7134_fh *fh = priv;
 struct saa7134_dev *dev = fh->dev;

 unsigned int tuner_type = dev->tuner_type;

 strcpy(cap->driver, "saa7134");
 strlcpy(cap->card, saa7134_boards[dev->board].name,
  sizeof(cap->card));
 sprintf(cap->bus_info, "PCI:%s", pci_name(dev->pci));
 cap->version = SAA7134_VERSION_CODE;
 cap->capabilities =
  V4L2_CAP_VIDEO_CAPTURE |
  V4L2_CAP_VBI_CAPTURE |
  V4L2_CAP_READWRITE |
  V4L2_CAP_STREAMING |
  V4L2_CAP_TUNER;
 if (dev->has_rds)
  cap->capabilities |= V4L2_CAP_RDS_CAPTURE;
 if (saa7134_no_overlay <= 0)
  cap->capabilities |= V4L2_CAP_VIDEO_OVERLAY;

 if ((tuner_type == TUNER_ABSENT) || (tuner_type == UNSET))
  cap->capabilities &= ~V4L2_CAP_TUNER;
 return 0;
}
