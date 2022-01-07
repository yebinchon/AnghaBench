
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int quality; int jpeg_hdr; } ;
struct gspca_dev {int width; int alt; int usb_err; int iface; int dev; int height; } ;


 int D_STREAM ;
 int PDEBUG (int ,char*,int) ;
 int err (char*,int ,int) ;
 int jpeg_define (int ,int ,int,int) ;
 int jpeg_set_qual (int ,int ) ;
 int rcv_val (struct gspca_dev*,int) ;
 int reg_r (struct gspca_dev*,int) ;
 int reg_w (struct gspca_dev*,int,int ) ;
 int set_par (struct gspca_dev*,int) ;
 int setbrightness (struct gspca_dev*) ;
 int setcolors (struct gspca_dev*) ;
 int setcontrast (struct gspca_dev*) ;
 int setlightfreq (struct gspca_dev*) ;
 int snd_val (struct gspca_dev*,int,int) ;
 int usb_set_interface (int ,int ,int) ;

__attribute__((used)) static int sd_start(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 int ret, value;


 jpeg_define(sd->jpeg_hdr, gspca_dev->height, gspca_dev->width,
   0x22);
 jpeg_set_qual(sd->jpeg_hdr, sd->quality);


 usb_set_interface(gspca_dev->dev, gspca_dev->iface, 1);

 set_par(gspca_dev, 0x10000000);
 set_par(gspca_dev, 0x00000000);
 set_par(gspca_dev, 0x8002e001);
 set_par(gspca_dev, 0x14000000);
 if (gspca_dev->width > 320)
  value = 0x8002e001;
 else
  value = 0x4001f000;
 set_par(gspca_dev, value);
 ret = usb_set_interface(gspca_dev->dev,
     gspca_dev->iface,
     gspca_dev->alt);
 if (ret < 0) {
  err("set intf %d %d failed",
   gspca_dev->iface, gspca_dev->alt);
  gspca_dev->usb_err = ret;
  goto out;
 }
  reg_r(gspca_dev, 0x0630);
 rcv_val(gspca_dev, 0x000020);
 reg_r(gspca_dev, 0x0650);
 snd_val(gspca_dev, 0x000020, 0xffffffff);
 reg_w(gspca_dev, 0x0620, 0);
 reg_w(gspca_dev, 0x0630, 0);
 reg_w(gspca_dev, 0x0640, 0);
 reg_w(gspca_dev, 0x0650, 0);
 reg_w(gspca_dev, 0x0660, 0);
 setbrightness(gspca_dev);
 setcontrast(gspca_dev);
 setcolors(gspca_dev);
 set_par(gspca_dev, 0x09800000);
 set_par(gspca_dev, 0x0a800000);
 set_par(gspca_dev, 0x0b800000);
 set_par(gspca_dev, 0x0d030000);
 setlightfreq(gspca_dev);


 set_par(gspca_dev, 0x01000000);
 set_par(gspca_dev, 0x01000000);
 if (gspca_dev->usb_err >= 0)
  PDEBUG(D_STREAM, "camera started alt: 0x%02x",
    gspca_dev->alt);
out:
 return gspca_dev->usb_err;
}
