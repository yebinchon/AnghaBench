
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_capability {int capabilities; scalar_t__ version; int bus_info; int card; int driver; } ;
struct saa7164_port {struct saa7164_dev* dev; } ;
struct saa7164_encoder_fh {struct saa7164_port* port; } ;
struct saa7164_dev {size_t board; int pci; int name; } ;
struct file {struct saa7164_encoder_fh* private_data; } ;
struct TYPE_2__ {int name; } ;


 int V4L2_CAP_READWRITE ;
 int V4L2_CAP_TUNER ;
 int V4L2_CAP_VIDEO_CAPTURE ;
 char* pci_name (int ) ;
 TYPE_1__* saa7164_boards ;
 int sprintf (int ,char*,char*) ;
 int strcpy (int ,int ) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static int vidioc_querycap(struct file *file, void *priv,
 struct v4l2_capability *cap)
{
 struct saa7164_encoder_fh *fh = file->private_data;
 struct saa7164_port *port = fh->port;
 struct saa7164_dev *dev = port->dev;

 strcpy(cap->driver, dev->name);
 strlcpy(cap->card, saa7164_boards[dev->board].name,
  sizeof(cap->card));
 sprintf(cap->bus_info, "PCI:%s", pci_name(dev->pci));

 cap->capabilities =
  V4L2_CAP_VIDEO_CAPTURE |
  V4L2_CAP_READWRITE |
  0;

 cap->capabilities |= V4L2_CAP_TUNER;
 cap->version = 0;

 return 0;
}
