
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int * usb_buf; int dev; } ;


 int err (char*,int ,int) ;
 int usb_bulk_msg (int ,int ,int *,int,int *,int) ;
 int usb_sndbulkpipe (int ,int) ;

__attribute__((used)) static int mr_write(struct gspca_dev *gspca_dev, int len)
{
 int rc;

 rc = usb_bulk_msg(gspca_dev->dev,
     usb_sndbulkpipe(gspca_dev->dev, 4),
     gspca_dev->usb_buf, len, ((void*)0), 500);
 if (rc < 0)
  err("reg write [%02x] error %d",
         gspca_dev->usb_buf[0], rc);
 return rc;
}
