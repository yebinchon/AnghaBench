
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ rc_mode; } ;
struct dvb_usb_device {int state; int rc_dev; int rc_input_dev; TYPE_1__ props; int rc_query_work; } ;


 scalar_t__ DVB_RC_LEGACY ;
 int DVB_USB_STATE_REMOTE ;
 int cancel_rearming_delayed_work (int *) ;
 int flush_scheduled_work () ;
 int input_unregister_device (int ) ;
 int rc_unregister_device (int ) ;

int dvb_usb_remote_exit(struct dvb_usb_device *d)
{
 if (d->state & DVB_USB_STATE_REMOTE) {
  cancel_rearming_delayed_work(&d->rc_query_work);
  flush_scheduled_work();
  if (d->props.rc_mode == DVB_RC_LEGACY)
   input_unregister_device(d->rc_input_dev);
  else
   rc_unregister_device(d->rc_dev);
 }
 d->state &= ~DVB_USB_STATE_REMOTE;
 return 0;
}
