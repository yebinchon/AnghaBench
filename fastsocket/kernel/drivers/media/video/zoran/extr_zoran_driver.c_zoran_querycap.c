
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zoran_fh {struct zoran* zr; } ;
struct zoran {int pci_dev; } ;
struct v4l2_capability {int capabilities; int version; int bus_info; int driver; int card; } ;
struct file {int dummy; } ;


 int KERNEL_VERSION (int ,int ,int ) ;
 int MAJOR_VERSION ;
 int MINOR_VERSION ;
 int RELEASE_VERSION ;
 int V4L2_CAP_STREAMING ;
 int V4L2_CAP_VIDEO_CAPTURE ;
 int V4L2_CAP_VIDEO_OUTPUT ;
 int V4L2_CAP_VIDEO_OVERLAY ;
 char* ZR_DEVNAME (struct zoran*) ;
 int memset (struct v4l2_capability*,int ,int) ;
 char* pci_name (int ) ;
 int snprintf (int ,int,char*,char*) ;
 int strncpy (int ,char*,int) ;

__attribute__((used)) static int zoran_querycap(struct file *file, void *__fh, struct v4l2_capability *cap)
{
 struct zoran_fh *fh = __fh;
 struct zoran *zr = fh->zr;

 memset(cap, 0, sizeof(*cap));
 strncpy(cap->card, ZR_DEVNAME(zr), sizeof(cap->card)-1);
 strncpy(cap->driver, "zoran", sizeof(cap->driver)-1);
 snprintf(cap->bus_info, sizeof(cap->bus_info), "PCI:%s",
   pci_name(zr->pci_dev));
 cap->version = KERNEL_VERSION(MAJOR_VERSION, MINOR_VERSION,
      RELEASE_VERSION);
 cap->capabilities = V4L2_CAP_STREAMING | V4L2_CAP_VIDEO_CAPTURE |
       V4L2_CAP_VIDEO_OUTPUT | V4L2_CAP_VIDEO_OVERLAY;
 return 0;
}
