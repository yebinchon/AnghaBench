
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_capability {int capabilities; scalar_t__ version; int bus_info; int card; int driver; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int mchip_dev; } ;


 int MEYE_DRIVER_MAJORVERSION ;
 scalar_t__ MEYE_DRIVER_MINORVERSION ;
 int V4L2_CAP_STREAMING ;
 int V4L2_CAP_VIDEO_CAPTURE ;
 TYPE_1__ meye ;
 char* pci_name (int ) ;
 int sprintf (int ,char*,char*) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int vidioc_querycap(struct file *file, void *fh,
    struct v4l2_capability *cap)
{
 strcpy(cap->driver, "meye");
 strcpy(cap->card, "meye");
 sprintf(cap->bus_info, "PCI:%s", pci_name(meye.mchip_dev));

 cap->version = (MEYE_DRIVER_MAJORVERSION << 8) +
         MEYE_DRIVER_MINORVERSION;

 cap->capabilities = V4L2_CAP_VIDEO_CAPTURE |
       V4L2_CAP_STREAMING;

 return 0;
}
