
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rc_dev {char* input_name; char* driver_name; int input_id; int map_name; int input_phys; } ;
struct dvb_usb_device {struct rc_dev* rc_dev; int udev; int rc_phys; } ;
struct dvb_usb_adapter {struct dvb_usb_device* dev; } ;


 int ENODEV ;
 int ENOMEM ;
 int RC_MAP_LME2510 ;
 int info (char*) ;
 int lme2510_int_read (struct dvb_usb_adapter*) ;
 struct rc_dev* rc_allocate_device () ;
 int rc_free_device (struct rc_dev*) ;
 int rc_register_device (struct rc_dev*) ;
 int rc_unregister_device (struct rc_dev*) ;
 int strlcat (int ,char*,int) ;
 int usb_make_path (int ,int ,int) ;
 int usb_to_input_id (int ,int *) ;

__attribute__((used)) static int lme2510_int_service(struct dvb_usb_adapter *adap)
{
 struct dvb_usb_device *d = adap->dev;
 struct rc_dev *rc;
 int ret;

 info("STA Configuring Remote");

 rc = rc_allocate_device();
 if (!rc)
  return -ENOMEM;

 usb_make_path(d->udev, d->rc_phys, sizeof(d->rc_phys));
 strlcat(d->rc_phys, "/ir0", sizeof(d->rc_phys));

 rc->input_name = "LME2510 Remote Control";
 rc->input_phys = d->rc_phys;
 rc->map_name = RC_MAP_LME2510;
 rc->driver_name = "LME 2510";
 usb_to_input_id(d->udev, &rc->input_id);

 ret = rc_register_device(rc);
 if (ret) {
  rc_free_device(rc);
  return ret;
 }
 d->rc_dev = rc;


 ret = lme2510_int_read(adap);
 if (ret < 0) {
  rc_unregister_device(rc);
  info("INT Unable to start Interupt Service");
  return -ENODEV;
 }

 return 0;
}
