
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ rc_codes; } ;
struct TYPE_4__ {scalar_t__ rc_mode; int rc_interval; TYPE_1__ rc_core; scalar_t__ rc_query; scalar_t__ rc_key_map; } ;
struct dvb_usb_device {int state; TYPE_2__ props; int rc_phys; int udev; } ;


 scalar_t__ DVB_RC_CORE ;
 scalar_t__ DVB_RC_LEGACY ;
 int DVB_USB_STATE_REMOTE ;
 scalar_t__ dvb_usb_disable_rc_polling ;
 int legacy_dvb_usb_remote_init (struct dvb_usb_device*) ;
 int rc_core_dvb_usb_remote_init (struct dvb_usb_device*) ;
 int strlcat (int ,char*,int) ;
 int usb_make_path (int ,int ,int) ;

int dvb_usb_remote_init(struct dvb_usb_device *d)
{
 int err;

 if (dvb_usb_disable_rc_polling)
  return 0;

 if (d->props.rc_key_map && d->props.rc_query)
  d->props.rc_mode = DVB_RC_LEGACY;
 else if (d->props.rc_core.rc_codes)
  d->props.rc_mode = DVB_RC_CORE;
 else
  return 0;

 usb_make_path(d->udev, d->rc_phys, sizeof(d->rc_phys));
 strlcat(d->rc_phys, "/ir0", sizeof(d->rc_phys));


 if (d->props.rc_interval < 40)
  d->props.rc_interval = 100;

 if (d->props.rc_mode == DVB_RC_LEGACY)
  err = legacy_dvb_usb_remote_init(d);
 else
  err = rc_core_dvb_usb_remote_init(d);
 if (err)
  return err;

 d->state |= DVB_USB_STATE_REMOTE;

 return 0;
}
