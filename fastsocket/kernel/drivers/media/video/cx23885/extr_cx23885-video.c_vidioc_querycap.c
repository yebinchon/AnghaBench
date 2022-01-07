
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_capability {int capabilities; int version; int bus_info; int card; int driver; } ;
struct file {int dummy; } ;
struct cx23885_fh {struct cx23885_dev* dev; } ;
struct cx23885_dev {size_t board; scalar_t__ tuner_type; int pci; } ;
struct TYPE_2__ {int name; } ;


 int CX23885_VERSION_CODE ;
 scalar_t__ UNSET ;
 int V4L2_CAP_READWRITE ;
 int V4L2_CAP_STREAMING ;
 int V4L2_CAP_TUNER ;
 int V4L2_CAP_VBI_CAPTURE ;
 int V4L2_CAP_VIDEO_CAPTURE ;
 TYPE_1__* cx23885_boards ;
 char* pci_name (int ) ;
 int sprintf (int ,char*,char*) ;
 int strcpy (int ,char*) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static int vidioc_querycap(struct file *file, void *priv,
 struct v4l2_capability *cap)
{
 struct cx23885_dev *dev = ((struct cx23885_fh *)priv)->dev;

 strcpy(cap->driver, "cx23885");
 strlcpy(cap->card, cx23885_boards[dev->board].name,
  sizeof(cap->card));
 sprintf(cap->bus_info, "PCIe:%s", pci_name(dev->pci));
 cap->version = CX23885_VERSION_CODE;
 cap->capabilities =
  V4L2_CAP_VIDEO_CAPTURE |
  V4L2_CAP_READWRITE |
  V4L2_CAP_STREAMING |
  V4L2_CAP_VBI_CAPTURE;
 if (UNSET != dev->tuner_type)
  cap->capabilities |= V4L2_CAP_TUNER;
 return 0;
}
