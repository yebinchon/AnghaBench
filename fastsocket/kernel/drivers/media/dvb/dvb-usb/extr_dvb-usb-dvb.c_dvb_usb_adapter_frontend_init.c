
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ (* frontend_attach ) (struct dvb_usb_adapter*) ;int (* tuner_attach ) (struct dvb_usb_adapter*) ;} ;
struct dvb_usb_adapter {TYPE_4__* dev; TYPE_2__ props; TYPE_5__* fe; int dvb_adap; int fe_sleep; int fe_init; int id; } ;
struct TYPE_7__ {int sleep; int init; } ;
struct TYPE_11__ {TYPE_1__ ops; } ;
struct TYPE_10__ {TYPE_3__* desc; } ;
struct TYPE_9__ {int name; } ;


 int ENODEV ;
 int dvb_frontend_detach (TYPE_5__*) ;
 scalar_t__ dvb_register_frontend (int *,TYPE_5__*) ;
 int dvb_usb_fe_sleep ;
 int dvb_usb_fe_wakeup ;
 int err (char*,...) ;
 scalar_t__ stub1 (struct dvb_usb_adapter*) ;
 int stub2 (struct dvb_usb_adapter*) ;

int dvb_usb_adapter_frontend_init(struct dvb_usb_adapter *adap)
{
 if (adap->props.frontend_attach == ((void*)0)) {
  err("strange: '%s' #%d doesn't want to attach a frontend.",adap->dev->desc->name, adap->id);
  return 0;
 }


 if (adap->props.frontend_attach(adap) == 0 && adap->fe != ((void*)0)) {
  adap->fe_init = adap->fe->ops.init; adap->fe->ops.init = dvb_usb_fe_wakeup;
  adap->fe_sleep = adap->fe->ops.sleep; adap->fe->ops.sleep = dvb_usb_fe_sleep;

  if (dvb_register_frontend(&adap->dvb_adap, adap->fe)) {
   err("Frontend registration failed.");
   dvb_frontend_detach(adap->fe);
   adap->fe = ((void*)0);
   return -ENODEV;
  }


  if (adap->props.tuner_attach != ((void*)0))
   adap->props.tuner_attach(adap);
 } else
  err("no frontend was attached by '%s'",adap->dev->desc->name);

 return 0;
}
