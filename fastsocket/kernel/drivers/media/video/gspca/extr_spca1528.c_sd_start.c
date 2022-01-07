
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {scalar_t__ pkt_seq; int jpeg_hdr; } ;
struct gspca_dev {int usb_err; int width; int height; } ;


 int jpeg_define (int ,int ,int ,int) ;
 int jpeg_set_qual (int ,int) ;
 int msleep (int) ;
 int reg_r (struct gspca_dev*,int,int,int) ;
 int reg_w (struct gspca_dev*,int,int,int) ;
 int setbrightness (struct gspca_dev*) ;
 int setcolor (struct gspca_dev*) ;
 int setcontrast (struct gspca_dev*) ;
 int sethue (struct gspca_dev*) ;
 int setsharpness (struct gspca_dev*) ;
 int wait_status_0 (struct gspca_dev*) ;
 int wait_status_1 (struct gspca_dev*) ;

__attribute__((used)) static int sd_start(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;


 jpeg_define(sd->jpeg_hdr, gspca_dev->height, gspca_dev->width,
   0x22);


 jpeg_set_qual(sd->jpeg_hdr, 82);


 setbrightness(gspca_dev);
 setcontrast(gspca_dev);
 sethue(gspca_dev);
 setcolor(gspca_dev);
 setsharpness(gspca_dev);

 msleep(5);
 reg_r(gspca_dev, 0x00, 0x2520, 1);
 msleep(8);


 wait_status_0(gspca_dev);
 reg_w(gspca_dev, 0x31, 0x0000, 0x0004);
 wait_status_1(gspca_dev);
 wait_status_0(gspca_dev);
 msleep(200);

 sd->pkt_seq = 0;
 return gspca_dev->usb_err;
}
