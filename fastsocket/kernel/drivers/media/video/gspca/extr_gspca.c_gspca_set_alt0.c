
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {scalar_t__ alt; int iface; int dev; } ;


 int err (char*,int) ;
 int usb_set_interface (int ,int ,int ) ;

__attribute__((used)) static int gspca_set_alt0(struct gspca_dev *gspca_dev)
{
 int ret;

 if (gspca_dev->alt == 0)
  return 0;
 ret = usb_set_interface(gspca_dev->dev, gspca_dev->iface, 0);
 if (ret < 0)
  err("set alt 0 err %d", ret);
 return ret;
}
