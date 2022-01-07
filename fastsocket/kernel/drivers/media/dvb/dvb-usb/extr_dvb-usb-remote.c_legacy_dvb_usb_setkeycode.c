
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct input_dev {int dummy; } ;
struct dvb_usb_rc_key {int scan; int event; } ;
struct TYPE_2__ {int rc_key_map_size; struct dvb_usb_rc_key* rc_key_map; } ;
struct dvb_usb_device {TYPE_1__ props; } ;


 int EINVAL ;
 int KEY_RESERVED ;
 int KEY_UNKNOWN ;
 struct dvb_usb_device* input_get_drvdata (struct input_dev*) ;

__attribute__((used)) static int legacy_dvb_usb_setkeycode(struct input_dev *dev,
    int scancode, int keycode)
{
 struct dvb_usb_device *d = input_get_drvdata(dev);

 struct dvb_usb_rc_key *keymap = d->props.rc_key_map;
 int i;


 for (i = 0; i < d->props.rc_key_map_size; i++)
  if (keymap[i].scan == scancode) {
   keymap[i].event = keycode;
   return 0;
  }


 for (i = 0; i < d->props.rc_key_map_size; i++)
  if (keymap[i].event == KEY_RESERVED ||
      keymap[i].event == KEY_UNKNOWN) {
   keymap[i].scan = scancode;
   keymap[i].event = keycode;
   return 0;
  }
 return -EINVAL;
}
