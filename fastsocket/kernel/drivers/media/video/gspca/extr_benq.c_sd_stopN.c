
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {scalar_t__ nbalt; int iface; int dev; } ;


 int reg_w (struct gspca_dev*,int,int) ;
 int usb_set_interface (int ,int ,scalar_t__) ;

__attribute__((used)) static void sd_stopN(struct gspca_dev *gspca_dev)
{
 reg_w(gspca_dev, 0x003c, 0x0003);
 reg_w(gspca_dev, 0x003c, 0x0004);
 reg_w(gspca_dev, 0x003c, 0x0005);
 reg_w(gspca_dev, 0x003c, 0x0006);
 reg_w(gspca_dev, 0x003c, 0x0007);
 usb_set_interface(gspca_dev->dev, gspca_dev->iface,
     gspca_dev->nbalt - 1);
}
