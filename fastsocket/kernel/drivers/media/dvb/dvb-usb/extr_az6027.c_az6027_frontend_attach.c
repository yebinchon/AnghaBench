
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct dvb_usb_adapter {TYPE_3__* fe; TYPE_2__* dev; } ;
struct TYPE_13__ {int demod_address; } ;
struct TYPE_12__ {int tuner_address; } ;
struct TYPE_9__ {int set_voltage; } ;
struct TYPE_11__ {TYPE_1__ ops; } ;
struct TYPE_10__ {int i2c_adap; } ;


 int az6027_ci_init (struct dvb_usb_adapter*) ;
 int az6027_frontend_poweron (struct dvb_usb_adapter*) ;
 int az6027_frontend_reset (struct dvb_usb_adapter*) ;
 int az6027_frontend_tsbypass (struct dvb_usb_adapter*,int ) ;
 int az6027_set_voltage ;
 TYPE_6__ az6027_stb0899_config ;
 TYPE_4__ az6027_stb6100_config ;
 int deb_info (char*,struct dvb_usb_adapter*,...) ;
 TYPE_3__* stb0899_attach (TYPE_6__*,int *) ;
 scalar_t__ stb6100_attach (TYPE_3__*,TYPE_4__*,int *) ;
 int warn (char*) ;

__attribute__((used)) static int az6027_frontend_attach(struct dvb_usb_adapter *adap)
{

 az6027_frontend_poweron(adap);
 az6027_frontend_reset(adap);

 deb_info("adap = %p, dev = %p\n", adap, adap->dev);
 adap->fe = stb0899_attach(&az6027_stb0899_config, &adap->dev->i2c_adap);

 if (adap->fe) {
  deb_info("found STB0899 DVB-S/DVB-S2 frontend @0x%02x", az6027_stb0899_config.demod_address);
  if (stb6100_attach(adap->fe, &az6027_stb6100_config, &adap->dev->i2c_adap)) {
   deb_info("found STB6100 DVB-S/DVB-S2 frontend @0x%02x", az6027_stb6100_config.tuner_address);
   adap->fe->ops.set_voltage = az6027_set_voltage;
   az6027_ci_init(adap);
  } else {
   adap->fe = ((void*)0);
  }
 } else
  warn("no front-end attached\n");

 az6027_frontend_tsbypass(adap, 0);

 return 0;
}
