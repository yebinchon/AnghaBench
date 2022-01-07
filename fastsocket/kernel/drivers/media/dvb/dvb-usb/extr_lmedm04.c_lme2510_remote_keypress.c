
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dvb_usb_device {int rc_dev; } ;
struct dvb_usb_adapter {struct dvb_usb_device* dev; } ;


 int deb_info (int,char*,int ) ;
 int rc_keydown (int ,int ,int ) ;

__attribute__((used)) static int lme2510_remote_keypress(struct dvb_usb_adapter *adap, u16 keypress)
{
 struct dvb_usb_device *d = adap->dev;

 deb_info(1, "INT Key Keypress =%04x", keypress);

 if (keypress > 0)
  rc_keydown(d->rc_dev, keypress, 0);

 return 0;
}
