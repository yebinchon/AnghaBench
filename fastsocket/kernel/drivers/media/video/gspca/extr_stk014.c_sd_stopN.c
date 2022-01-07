
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;
struct gspca_dev {int iface; struct usb_device* dev; } ;


 int D_STREAM ;
 int PDEBUG (int ,char*) ;
 int rcv_val (struct gspca_dev*,int) ;
 int reg_r (struct gspca_dev*,int) ;
 int reg_w (struct gspca_dev*,int,int ) ;
 int set_par (struct gspca_dev*,int) ;
 int snd_val (struct gspca_dev*,int,int) ;
 int usb_set_interface (struct usb_device*,int ,int) ;

__attribute__((used)) static void sd_stopN(struct gspca_dev *gspca_dev)
{
 struct usb_device *dev = gspca_dev->dev;

 set_par(gspca_dev, 0x02000000);
 set_par(gspca_dev, 0x02000000);
 usb_set_interface(dev, gspca_dev->iface, 1);
 reg_r(gspca_dev, 0x0630);
 rcv_val(gspca_dev, 0x000020);
 reg_r(gspca_dev, 0x0650);
 snd_val(gspca_dev, 0x000020, 0xffffffff);
 reg_w(gspca_dev, 0x0620, 0);
 reg_w(gspca_dev, 0x0630, 0);
 reg_w(gspca_dev, 0x0640, 0);
 reg_w(gspca_dev, 0x0650, 0);
 reg_w(gspca_dev, 0x0660, 0);
 PDEBUG(D_STREAM, "camera stopped");
}
