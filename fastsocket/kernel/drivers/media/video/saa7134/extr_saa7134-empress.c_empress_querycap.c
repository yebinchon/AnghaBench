
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_capability {int capabilities; int version; int bus_info; int card; int driver; } ;
struct saa7134_dev {size_t board; int pci; } ;
struct file {struct saa7134_dev* private_data; } ;
struct TYPE_2__ {int name; } ;


 int SAA7134_VERSION_CODE ;
 int V4L2_CAP_READWRITE ;
 int V4L2_CAP_STREAMING ;
 int V4L2_CAP_VIDEO_CAPTURE ;
 char* pci_name (int ) ;
 TYPE_1__* saa7134_boards ;
 int sprintf (int ,char*,char*) ;
 int strcpy (int ,char*) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static int empress_querycap(struct file *file, void *priv,
     struct v4l2_capability *cap)
{
 struct saa7134_dev *dev = file->private_data;

 strcpy(cap->driver, "saa7134");
 strlcpy(cap->card, saa7134_boards[dev->board].name,
  sizeof(cap->card));
 sprintf(cap->bus_info, "PCI:%s", pci_name(dev->pci));
 cap->version = SAA7134_VERSION_CODE;
 cap->capabilities =
  V4L2_CAP_VIDEO_CAPTURE |
  V4L2_CAP_READWRITE |
  V4L2_CAP_STREAMING;
 return 0;
}
