
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct usb_device {int dummy; } ;
struct TYPE_3__ {int* usb_buf; struct usb_device* dev; } ;
struct sd {TYPE_2__* sensor; TYPE_1__ gspca_dev; } ;
typedef int __u8 ;
struct TYPE_4__ {int i2c_addr; } ;


 int D_CONF ;
 int I2C_BUFFER_LENGTH ;
 int I2C_MAX_BYTES ;
 int I2C_WRITE_CMD ;
 int PDEBUG (int ,char*,int const,...) ;
 int STV06XX_URB_MSG_TIMEOUT ;
 int memset (int*,int ,int ) ;
 int stv06xx_write_sensor_finish (struct sd*) ;
 int usb_control_msg (struct usb_device*,int ,int,int,int,int ,int*,int ,int ) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;

int stv06xx_write_sensor_bytes(struct sd *sd, const u8 *data, u8 len)
{
 int err, i, j;
 struct usb_device *udev = sd->gspca_dev.dev;
 __u8 *buf = sd->gspca_dev.usb_buf;

 PDEBUG(D_CONF, "I2C: Command buffer contains %d entries", len);
 for (i = 0; i < len;) {

  memset(buf, 0, I2C_BUFFER_LENGTH);
  for (j = 0; j < I2C_MAX_BYTES && i < len; j++, i++) {
   buf[j] = data[2*i];
   buf[0x10 + j] = data[2*i+1];
   PDEBUG(D_CONF, "I2C: Writing 0x%02x to reg 0x%02x",
   data[2*i+1], data[2*i]);
  }
  buf[0x20] = sd->sensor->i2c_addr;
  buf[0x21] = j - 1;
  buf[0x22] = I2C_WRITE_CMD;
  err = usb_control_msg(udev, usb_sndctrlpipe(udev, 0),
          0x04, 0x40, 0x0400, 0, buf,
          I2C_BUFFER_LENGTH,
          STV06XX_URB_MSG_TIMEOUT);
  if (err < 0)
   return err;
 }
 return stv06xx_write_sensor_finish(sd);
}
