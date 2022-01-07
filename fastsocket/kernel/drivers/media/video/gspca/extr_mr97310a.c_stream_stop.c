
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int* usb_buf; } ;


 int D_ERR ;
 int PDEBUG (int ,char*) ;
 scalar_t__ mr_write (struct gspca_dev*,int) ;

__attribute__((used)) static void stream_stop(struct gspca_dev *gspca_dev)
{
 gspca_dev->usb_buf[0] = 0x01;
 gspca_dev->usb_buf[1] = 0x00;
 if (mr_write(gspca_dev, 2) < 0)
  PDEBUG(D_ERR, "Stream Stop failed");
}
