
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct TYPE_3__ {int protocol; } ;
struct TYPE_4__ {TYPE_1__ rc_core; } ;
struct dvb_usb_device {int rc_dev; scalar_t__ last_event; TYPE_2__ props; struct dib0700_state* priv; } ;
struct dib0700_state {int fw_version; } ;



 int dib0700_ctrl_rd (struct dvb_usb_device*,int ,int,scalar_t__*,int) ;
 int dib0700_rc_setup (struct dvb_usb_device*) ;
 int err (char*) ;
 int rc_keydown (int ,scalar_t__,scalar_t__) ;
 int rc_request ;

__attribute__((used)) static int dib0700_rc_query_old_firmware(struct dvb_usb_device *d)
{
 u8 key[4];
 u32 keycode;
 u8 toggle;
 int i;
 struct dib0700_state *st = d->priv;

 if (st->fw_version >= 0x10200) {




  return 0;
 }

 i = dib0700_ctrl_rd(d, rc_request, 2, key, 4);
 if (i <= 0) {
  err("RC Query Failed");
  return -1;
 }


 if (key[0] == 0 && key[1] == 0 && key[2] == 0 && key[3] == 0)
  return 0;



 dib0700_rc_setup(d);

 d->last_event = 0;
 switch (d->props.rc_core.protocol) {
 case 128:

  if ((key[3-2] == 0x00) && (key[3-3] == 0x00) &&
      (key[3] == 0xff))
   keycode = d->last_event;
  else {
   keycode = key[3-2] << 8 | key[3-3];
   d->last_event = keycode;
  }

  rc_keydown(d->rc_dev, keycode, 0);
  break;
 default:

  keycode = key[3-2] << 8 | key[3-3];
  toggle = key[3-1];
  rc_keydown(d->rc_dev, keycode, toggle);

  break;
 }
 return 0;
}
