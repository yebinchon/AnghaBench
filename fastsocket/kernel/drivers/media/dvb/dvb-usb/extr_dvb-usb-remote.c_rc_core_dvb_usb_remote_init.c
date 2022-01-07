
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * parent; } ;
struct rc_dev {char* input_name; struct dvb_usb_device* priv; TYPE_1__ dev; int input_phys; int input_id; int driver_type; int allowed_protos; int change_protocol; int map_name; int driver_name; } ;
struct TYPE_6__ {int rc_interval; scalar_t__ bulk_mode; int rc_query; int allowed_protos; int change_protocol; int rc_codes; int module_name; } ;
struct TYPE_7__ {TYPE_2__ rc_core; } ;
struct dvb_usb_device {int rc_query_work; TYPE_3__ props; struct rc_dev* rc_dev; int * rc_input_dev; TYPE_4__* udev; int rc_phys; } ;
struct TYPE_8__ {int dev; } ;


 int ENOMEM ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int RC_DRIVER_SCANCODE ;
 int dvb_usb_read_remote_control ;
 int info (char*,int) ;
 int msecs_to_jiffies (int) ;
 struct rc_dev* rc_allocate_device () ;
 int rc_free_device (struct rc_dev*) ;
 int rc_register_device (struct rc_dev*) ;
 int schedule_delayed_work (int *,int ) ;
 int usb_to_input_id (TYPE_4__*,int *) ;

__attribute__((used)) static int rc_core_dvb_usb_remote_init(struct dvb_usb_device *d)
{
 int err, rc_interval;
 struct rc_dev *dev;

 dev = rc_allocate_device();
 if (!dev)
  return -ENOMEM;

 dev->driver_name = d->props.rc_core.module_name;
 dev->map_name = d->props.rc_core.rc_codes;
 dev->change_protocol = d->props.rc_core.change_protocol;
 dev->allowed_protos = d->props.rc_core.allowed_protos;
 dev->driver_type = RC_DRIVER_SCANCODE;
 usb_to_input_id(d->udev, &dev->input_id);
 dev->input_name = "IR-receiver inside an USB DVB receiver";
 dev->input_phys = d->rc_phys;
 dev->dev.parent = &d->udev->dev;
 dev->priv = d;

 err = rc_register_device(dev);
 if (err < 0) {
  rc_free_device(dev);
  return err;
 }

 d->rc_input_dev = ((void*)0);
 d->rc_dev = dev;

 if (!d->props.rc_core.rc_query || d->props.rc_core.bulk_mode)
  return 0;


 INIT_DELAYED_WORK(&d->rc_query_work, dvb_usb_read_remote_control);

 rc_interval = d->props.rc_core.rc_interval;

 info("schedule remote query interval to %d msecs.", rc_interval);
 schedule_delayed_work(&d->rc_query_work,
         msecs_to_jiffies(rc_interval));

 return 0;
}
