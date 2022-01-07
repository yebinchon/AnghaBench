
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_capability {int capabilities; int version; int bus_info; int card; int driver; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int name; } ;
struct cx88_core {TYPE_1__ board; } ;
struct cx8800_fh {struct cx8800_dev* dev; } ;
struct cx8800_dev {int pci; struct cx88_core* core; } ;


 int CX88_VERSION_CODE ;
 int V4L2_CAP_TUNER ;
 char* pci_name (int ) ;
 int sprintf (int ,char*,char*) ;
 int strcpy (int ,char*) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static int radio_querycap (struct file *file, void *priv,
     struct v4l2_capability *cap)
{
 struct cx8800_dev *dev = ((struct cx8800_fh *)priv)->dev;
 struct cx88_core *core = dev->core;

 strcpy(cap->driver, "cx8800");
 strlcpy(cap->card, core->board.name, sizeof(cap->card));
 sprintf(cap->bus_info,"PCI:%s", pci_name(dev->pci));
 cap->version = CX88_VERSION_CODE;
 cap->capabilities = V4L2_CAP_TUNER;
 return 0;
}
