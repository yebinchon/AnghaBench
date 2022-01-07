
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {unsigned char* usb_buf; int dev; } ;


 int err (char*,unsigned char,int) ;
 int usb_bulk_msg (int ,int ,unsigned char*,int,int *,int) ;
 int usb_rcvbulkpipe (int ,int) ;

__attribute__((used)) static int jlj_read1(struct gspca_dev *gspca_dev, unsigned char response)
{
 int retval;

 retval = usb_bulk_msg(gspca_dev->dev,
 usb_rcvbulkpipe(gspca_dev->dev, 0x84),
    gspca_dev->usb_buf, 1, ((void*)0), 500);
 response = gspca_dev->usb_buf[0];
 if (retval < 0)
  err("read command [%02x] error %d",
    gspca_dev->usb_buf[0], retval);
 return retval;
}
