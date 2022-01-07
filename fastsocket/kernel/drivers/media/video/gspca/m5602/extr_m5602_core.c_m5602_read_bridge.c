
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct usb_device {int dummy; } ;
struct TYPE_2__ {scalar_t__* usb_buf; struct usb_device* dev; } ;
struct sd {TYPE_1__ gspca_dev; } ;
typedef scalar_t__ __u8 ;


 int D_CONF ;
 int M5602_URB_MSG_TIMEOUT ;
 int PDEBUG (int ,char*,scalar_t__ const,scalar_t__) ;
 int usb_control_msg (struct usb_device*,int ,int,int,int,scalar_t__ const,scalar_t__*,int,int ) ;
 int usb_rcvctrlpipe (struct usb_device*,int ) ;

int m5602_read_bridge(struct sd *sd, const u8 address, u8 *i2c_data)
{
 int err;
 struct usb_device *udev = sd->gspca_dev.dev;
 __u8 *buf = sd->gspca_dev.usb_buf;

 err = usb_control_msg(udev, usb_rcvctrlpipe(udev, 0),
         0x04, 0xc0, 0x14,
         0x8100 + address, buf,
         1, M5602_URB_MSG_TIMEOUT);
 *i2c_data = buf[0];

 PDEBUG(D_CONF, "Reading bridge register 0x%x containing 0x%x",
        address, *i2c_data);



 return (err < 0) ? err : 0;
}
