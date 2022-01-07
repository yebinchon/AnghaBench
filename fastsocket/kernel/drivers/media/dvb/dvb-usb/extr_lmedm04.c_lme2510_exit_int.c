
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lme2510_state {int i2c_talk_onoff; TYPE_1__* lme_urb; int buffer; void* usb_buffer; scalar_t__ signal_sn; scalar_t__ signal_level; scalar_t__ signal_lock; } ;
struct dvb_usb_device {int rc_dev; int udev; struct dvb_usb_adapter* adapter; struct lme2510_state* priv; } ;
struct dvb_usb_adapter {scalar_t__ feedcount; int stream; } ;
struct TYPE_2__ {int transfer_dma; } ;


 int info (char*) ;
 int lme2510_kill_urb (int *) ;
 int rc_unregister_device (int ) ;
 int usb_buffer_free (int ,int,int ,int ) ;
 int usb_kill_urb (TYPE_1__*) ;

void *lme2510_exit_int(struct dvb_usb_device *d)
{
 struct lme2510_state *st = d->priv;
 struct dvb_usb_adapter *adap = &d->adapter[0];
 void *buffer = ((void*)0);

 if (adap != ((void*)0)) {
  lme2510_kill_urb(&adap->stream);
  adap->feedcount = 0;
 }

 if (st->lme_urb != ((void*)0)) {
  st->i2c_talk_onoff = 1;
  st->signal_lock = 0;
  st->signal_level = 0;
  st->signal_sn = 0;
  buffer = st->usb_buffer;
  usb_kill_urb(st->lme_urb);
  usb_buffer_free(d->udev, 5000, st->buffer,
      st->lme_urb->transfer_dma);
  info("Interupt Service Stopped");
  rc_unregister_device(d->rc_dev);
  info("Remote Stopped");
 }
 return buffer;
}
