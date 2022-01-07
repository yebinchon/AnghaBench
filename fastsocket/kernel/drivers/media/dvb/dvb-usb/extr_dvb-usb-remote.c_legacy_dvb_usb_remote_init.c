
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * parent; } ;
struct input_dev {char* name; int* rep; int keybit; int setkeycode; int getkeycode; TYPE_1__ dev; int id; int phys; int * evbit; } ;
struct TYPE_7__ {int rc_key_map_size; int rc_interval; TYPE_2__* rc_key_map; } ;
struct dvb_usb_device {int state; int rc_query_work; TYPE_3__ props; struct input_dev* rc_input_dev; TYPE_4__* udev; int rc_phys; } ;
struct TYPE_8__ {int dev; } ;
struct TYPE_6__ {int event; } ;


 int BIT_MASK (int ) ;
 int DVB_USB_STATE_REMOTE ;
 int ENOMEM ;
 int EV_KEY ;
 int INIT_DELAYED_WORK (int *,int ) ;
 size_t REP_DELAY ;
 size_t REP_PERIOD ;
 int deb_rc (char*,int,...) ;
 int info (char*,int) ;
 struct input_dev* input_allocate_device () ;
 int input_free_device (struct input_dev*) ;
 int input_register_device (struct input_dev*) ;
 int input_set_drvdata (struct input_dev*,struct dvb_usb_device*) ;
 int legacy_dvb_usb_getkeycode ;
 int legacy_dvb_usb_read_remote_control ;
 int legacy_dvb_usb_setkeycode ;
 int msecs_to_jiffies (int) ;
 int schedule_delayed_work (int *,int ) ;
 int set_bit (int ,int ) ;
 int usb_to_input_id (TYPE_4__*,int *) ;

__attribute__((used)) static int legacy_dvb_usb_remote_init(struct dvb_usb_device *d)
{
 int i, err, rc_interval;
 struct input_dev *input_dev;

 input_dev = input_allocate_device();
 if (!input_dev)
  return -ENOMEM;

 input_dev->evbit[0] = BIT_MASK(EV_KEY);
 input_dev->name = "IR-receiver inside an USB DVB receiver";
 input_dev->phys = d->rc_phys;
 usb_to_input_id(d->udev, &input_dev->id);
 input_dev->dev.parent = &d->udev->dev;
 d->rc_input_dev = input_dev;

 input_dev->getkeycode = legacy_dvb_usb_getkeycode;
 input_dev->setkeycode = legacy_dvb_usb_setkeycode;


 deb_rc("key map size: %d\n", d->props.rc_key_map_size);
 for (i = 0; i < d->props.rc_key_map_size; i++) {
  deb_rc("setting bit for event %d item %d\n",
   d->props.rc_key_map[i].event, i);
  set_bit(d->props.rc_key_map[i].event, input_dev->keybit);
 }


 input_dev->rep[REP_PERIOD] = d->props.rc_interval;
 input_dev->rep[REP_DELAY] = d->props.rc_interval + 150;

 input_set_drvdata(input_dev, d);

 err = input_register_device(input_dev);
 if (err)
  input_free_device(input_dev);

 rc_interval = d->props.rc_interval;

 INIT_DELAYED_WORK(&d->rc_query_work, legacy_dvb_usb_read_remote_control);

 info("schedule remote query interval to %d msecs.", rc_interval);
 schedule_delayed_work(&d->rc_query_work,
         msecs_to_jiffies(rc_interval));

 d->state |= DVB_USB_STATE_REMOTE;

 return err;
}
