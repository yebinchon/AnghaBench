
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {scalar_t__ nbalt; int iface; int dev; } ;


 int err (char*) ;
 int usb_set_interface (int ,int ,scalar_t__) ;

__attribute__((used)) static int sd_isoc_init(struct gspca_dev *gspca_dev)
{
 int ret;

 ret = usb_set_interface(gspca_dev->dev, gspca_dev->iface,
  gspca_dev->nbalt - 1);
 if (ret < 0) {
  err("usb_set_interface failed");
  return ret;
 }

 return 0;
}
