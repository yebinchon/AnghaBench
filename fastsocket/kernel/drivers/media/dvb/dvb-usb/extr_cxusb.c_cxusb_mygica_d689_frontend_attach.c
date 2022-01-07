
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* adapter; int generic_bulk_ctrl_endpoint; } ;
struct dvb_usb_device {int i2c_adap; TYPE_3__ props; int udev; } ;
struct dvb_usb_adapter {int * fe; struct dvb_usb_device* dev; } ;
struct TYPE_4__ {int endpoint; } ;
struct TYPE_5__ {TYPE_1__ stream; } ;


 int EIO ;
 int atbm8830_attach ;
 scalar_t__ cxusb_d680_dmb_gpio_tuner (struct dvb_usb_device*,int,int) ;
 int * dvb_attach (int ,int *,int *) ;
 int err (char*) ;
 int msleep (int) ;
 int mygica_d689_atbm8830_cfg ;
 int usb_clear_halt (int ,int ) ;
 int usb_rcvbulkpipe (int ,int ) ;
 scalar_t__ usb_set_interface (int ,int ,int ) ;
 int usb_sndbulkpipe (int ,int ) ;

__attribute__((used)) static int cxusb_mygica_d689_frontend_attach(struct dvb_usb_adapter *adap)
{
 struct dvb_usb_device *d = adap->dev;


 if (usb_set_interface(d->udev, 0, 0) < 0)
  err("set interface failed");


 usb_clear_halt(d->udev,
  usb_sndbulkpipe(d->udev, d->props.generic_bulk_ctrl_endpoint));
 usb_clear_halt(d->udev,
  usb_rcvbulkpipe(d->udev, d->props.generic_bulk_ctrl_endpoint));
 usb_clear_halt(d->udev,
  usb_rcvbulkpipe(d->udev, d->props.adapter[0].stream.endpoint));



 if (cxusb_d680_dmb_gpio_tuner(d, 0x07, 0) < 0) {
  err("clear tuner gpio failed");
  return -EIO;
 }
 msleep(100);
 if (cxusb_d680_dmb_gpio_tuner(d, 0x07, 1) < 0) {
  err("set tuner gpio failed");
  return -EIO;
 }
 msleep(100);


 adap->fe = dvb_attach(atbm8830_attach, &mygica_d689_atbm8830_cfg,
  &d->i2c_adap);
 if (adap->fe == ((void*)0))
  return -EIO;

 return 0;
}
