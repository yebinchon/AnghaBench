
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_usb_adapter {int fe; struct dibusb_state* priv; } ;
struct TYPE_2__ {scalar_t__ (* fifo_ctrl ) (int ,int) ;} ;
struct dibusb_state {TYPE_1__ ops; } ;


 int ENODEV ;
 int err (char*) ;
 scalar_t__ stub1 (int ,int) ;

int dibusb_streaming_ctrl(struct dvb_usb_adapter *adap, int onoff)
{
 if (adap->priv != ((void*)0)) {
  struct dibusb_state *st = adap->priv;
  if (st->ops.fifo_ctrl != ((void*)0))
   if (st->ops.fifo_ctrl(adap->fe,onoff)) {
    err("error while controlling the fifo of the demod.");
    return -ENODEV;
   }
 }
 return 0;
}
