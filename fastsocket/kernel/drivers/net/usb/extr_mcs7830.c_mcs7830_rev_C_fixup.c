
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct usbnet {TYPE_1__* udev; } ;
struct TYPE_2__ {int dev; } ;


 int HIF_REG_PAUSE_THRESHOLD ;
 int HIF_REG_PAUSE_THRESHOLD_DEFAULT ;
 int dev_info (int *,char*) ;
 int mcs7830_get_rev (struct usbnet*) ;
 int mcs7830_set_reg (struct usbnet*,int ,int,int *) ;
 int msleep (int) ;

__attribute__((used)) static void mcs7830_rev_C_fixup(struct usbnet *dev)
{
 u8 pause_threshold = HIF_REG_PAUSE_THRESHOLD_DEFAULT;
 int retry;

 for (retry = 0; retry < 2; retry++) {
  if (mcs7830_get_rev(dev) == 2) {
   dev_info(&dev->udev->dev, "applying rev.C fixup\n");
   mcs7830_set_reg(dev, HIF_REG_PAUSE_THRESHOLD,
     1, &pause_threshold);
  }
  msleep(1);
 }
}
