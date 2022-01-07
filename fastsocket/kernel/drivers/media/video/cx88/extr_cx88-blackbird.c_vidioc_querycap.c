
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_capability {int capabilities; int version; int bus_info; int card; int driver; } ;
struct file {int dummy; } ;
struct TYPE_2__ {scalar_t__ tuner_type; int name; } ;
struct cx88_core {TYPE_1__ board; } ;
struct cx8802_fh {struct cx8802_dev* dev; } ;
struct cx8802_dev {int pci; struct cx88_core* core; } ;


 int CX88_VERSION_CODE ;
 scalar_t__ UNSET ;
 int V4L2_CAP_READWRITE ;
 int V4L2_CAP_STREAMING ;
 int V4L2_CAP_TUNER ;
 int V4L2_CAP_VIDEO_CAPTURE ;
 char* pci_name (int ) ;
 int sprintf (int ,char*,char*) ;
 int strcpy (int ,char*) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static int vidioc_querycap (struct file *file, void *priv,
     struct v4l2_capability *cap)
{
 struct cx8802_dev *dev = ((struct cx8802_fh *)priv)->dev;
 struct cx88_core *core = dev->core;

 strcpy(cap->driver, "cx88_blackbird");
 strlcpy(cap->card, core->board.name, sizeof(cap->card));
 sprintf(cap->bus_info,"PCI:%s",pci_name(dev->pci));
 cap->version = CX88_VERSION_CODE;
 cap->capabilities =
  V4L2_CAP_VIDEO_CAPTURE |
  V4L2_CAP_READWRITE |
  V4L2_CAP_STREAMING;
 if (UNSET != core->board.tuner_type)
  cap->capabilities |= V4L2_CAP_TUNER;
 return 0;
}
