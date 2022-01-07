
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_capability {int capabilities; int version; int bus_info; int card; int driver; } ;
struct file {int dummy; } ;
struct cx231xx_fh {struct cx231xx* dev; } ;
struct cx231xx {size_t model; int udev; } ;
struct TYPE_2__ {char* name; } ;


 int CX231XX_VERSION_CODE ;
 int V4L2_CAP_TUNER ;
 TYPE_1__* cx231xx_boards ;
 int strlcpy (int ,char*,int) ;
 int usb_make_path (int ,int ,int) ;

__attribute__((used)) static int radio_querycap(struct file *file, void *priv,
     struct v4l2_capability *cap)
{
 struct cx231xx *dev = ((struct cx231xx_fh *)priv)->dev;

 strlcpy(cap->driver, "cx231xx", sizeof(cap->driver));
 strlcpy(cap->card, cx231xx_boards[dev->model].name, sizeof(cap->card));
 usb_make_path(dev->udev, cap->bus_info, sizeof(cap->bus_info));

 cap->version = CX231XX_VERSION_CODE;
 cap->capabilities = V4L2_CAP_TUNER;
 return 0;
}
