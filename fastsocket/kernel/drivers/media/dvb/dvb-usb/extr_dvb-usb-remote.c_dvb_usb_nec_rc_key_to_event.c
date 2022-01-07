
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct dvb_usb_rc_key {scalar_t__ event; } ;
struct TYPE_2__ {int rc_key_map_size; struct dvb_usb_rc_key* rc_key_map; } ;
struct dvb_usb_device {TYPE_1__ props; } ;





 int REMOTE_KEY_PRESSED ;
 int REMOTE_KEY_REPEAT ;
 int REMOTE_NO_KEY_PRESSED ;
 int deb_err (char*,...) ;
 int rc5_custom (struct dvb_usb_rc_key*) ;
 int rc5_data (struct dvb_usb_rc_key*) ;

int dvb_usb_nec_rc_key_to_event(struct dvb_usb_device *d,
  u8 keybuf[5], u32 *event, int *state)
{
 int i;
 struct dvb_usb_rc_key *keymap = d->props.rc_key_map;
 *event = 0;
 *state = REMOTE_NO_KEY_PRESSED;
 switch (keybuf[0]) {
  case 130:
   break;
  case 129:
   if ((u8) ~keybuf[1] != keybuf[2] ||
    (u8) ~keybuf[3] != keybuf[4]) {
    deb_err("remote control checksum failed.\n");
    break;
   }

   for (i = 0; i < d->props.rc_key_map_size; i++)
    if (rc5_custom(&keymap[i]) == keybuf[1] &&
     rc5_data(&keymap[i]) == keybuf[3]) {
     *event = keymap[i].event;
     *state = REMOTE_KEY_PRESSED;
     return 0;
    }
   deb_err("key mapping failed - no appropriate key found in keymapping\n");
   break;
  case 128:
   *state = REMOTE_KEY_REPEAT;
   break;
  default:
   deb_err("unknown type of remote status: %d\n",keybuf[0]);
   break;
 }
 return 0;
}
