
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct i2c_msg {int addr; int* buf; int len; int flags; } ;
struct dvb_usb_adapter {TYPE_2__* dev; int * fe; } ;
struct TYPE_5__ {int * rc_key_map; } ;
struct TYPE_6__ {TYPE_1__ props; int i2c_adap; int udev; } ;


 int CMD_DIGITAL ;
 int EIO ;
 int I2C_M_RD ;
 int cxusb_bluebird_gpio_pulse (TYPE_2__*,int,int) ;
 int cxusb_bluebird_gpio_rw (TYPE_2__*,int,int ) ;
 int cxusb_ctrl_msg (TYPE_2__*,int ,int *,int ,int *,int ) ;
 int cxusb_i2c_xfer (int *,struct i2c_msg*,int) ;
 int cxusb_zl10353_xc3028_config_no_i2c_gate ;
 int * dvb_attach (int ,int *,int *) ;
 int err (char*) ;
 int info (char*) ;
 int msleep (int) ;
 scalar_t__ usb_set_interface (int ,int ,int) ;
 int zl10353_attach ;

__attribute__((used)) static int cxusb_dualdig4_frontend_attach(struct dvb_usb_adapter *adap)
{
 u8 ircode[4];
 int i;
 struct i2c_msg msg = { .addr = 0x6b, .flags = I2C_M_RD,
          .buf = ircode, .len = 4 };

 if (usb_set_interface(adap->dev->udev, 0, 1) < 0)
  err("set interface failed");

 cxusb_ctrl_msg(adap->dev, CMD_DIGITAL, ((void*)0), 0, ((void*)0), 0);


 cxusb_bluebird_gpio_rw(adap->dev, 0x04, 0);
 cxusb_bluebird_gpio_pulse(adap->dev, 0x01, 1);
 cxusb_bluebird_gpio_pulse(adap->dev, 0x02, 1);

 if ((adap->fe = dvb_attach(zl10353_attach,
       &cxusb_zl10353_xc3028_config_no_i2c_gate,
       &adap->dev->i2c_adap)) == ((void*)0))
  return -EIO;


 for (i = 0; adap->dev->props.rc_key_map != ((void*)0) && i < 5; i++) {
  msleep(20);
  if (cxusb_i2c_xfer(&adap->dev->i2c_adap, &msg, 1) != 1)
   goto no_IR;
  if (ircode[0] == 0 && ircode[1] == 0)
   continue;
  if (ircode[2] + ircode[3] != 0xff) {
no_IR:
   adap->dev->props.rc_key_map = ((void*)0);
   info("No IR receiver detected on this device.");
   break;
  }
 }

 return 0;
}
