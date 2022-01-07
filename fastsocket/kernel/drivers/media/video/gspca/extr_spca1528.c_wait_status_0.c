
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {scalar_t__* usb_buf; int usb_err; } ;


 int D_ERR ;
 int ETIME ;
 int PDEBUG (int ,char*) ;
 int msleep (int) ;
 int reg_r (struct gspca_dev*,int,int,int) ;

__attribute__((used)) static void wait_status_0(struct gspca_dev *gspca_dev)
{
 int i;

 i = 20;
 do {
  reg_r(gspca_dev, 0x21, 0x0000, 1);
  if (gspca_dev->usb_buf[0] == 0)
   return;
  msleep(30);
 } while (--i > 0);
 PDEBUG(D_ERR, "wait_status_0 timeout");
 gspca_dev->usb_err = -ETIME;
}
