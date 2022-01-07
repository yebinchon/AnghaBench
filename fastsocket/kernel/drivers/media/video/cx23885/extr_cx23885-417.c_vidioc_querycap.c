
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_capability {int capabilities; int version; int bus_info; int card; int driver; } ;
struct file {struct cx23885_fh* private_data; } ;
struct cx23885_tsport {TYPE_1__* dev; } ;
struct cx23885_fh {struct cx23885_dev* dev; } ;
struct cx23885_dev {scalar_t__ tuner_type; int pci; int name; struct cx23885_tsport ts1; } ;
struct TYPE_4__ {int name; } ;
struct TYPE_3__ {size_t board; } ;


 int CX23885_VERSION_CODE ;
 scalar_t__ UNSET ;
 int V4L2_CAP_READWRITE ;
 int V4L2_CAP_STREAMING ;
 int V4L2_CAP_TUNER ;
 int V4L2_CAP_VIDEO_CAPTURE ;
 TYPE_2__* cx23885_boards ;
 char* pci_name (int ) ;
 int sprintf (int ,char*,char*) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static int vidioc_querycap(struct file *file, void *priv,
    struct v4l2_capability *cap)
{
 struct cx23885_fh *fh = file->private_data;
 struct cx23885_dev *dev = fh->dev;
 struct cx23885_tsport *tsport = &dev->ts1;

 strlcpy(cap->driver, dev->name, sizeof(cap->driver));
 strlcpy(cap->card, cx23885_boards[tsport->dev->board].name,
  sizeof(cap->card));
 sprintf(cap->bus_info, "PCI:%s", pci_name(dev->pci));
 cap->version = CX23885_VERSION_CODE;
 cap->capabilities =
  V4L2_CAP_VIDEO_CAPTURE |
  V4L2_CAP_READWRITE |
  V4L2_CAP_STREAMING |
  0;
 if (UNSET != dev->tuner_type)
  cap->capabilities |= V4L2_CAP_TUNER;

 return 0;
}
