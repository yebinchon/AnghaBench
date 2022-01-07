
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mt352_config {int demod_address; int demod_init; } ;
struct dvb_usb_adapter {TYPE_1__* dev; int fe; } ;
struct TYPE_2__ {int i2c_adap; } ;


 int dvb_attach (int ,struct mt352_config*,int *) ;
 int memset (struct mt352_config*,int ,int) ;
 int mt352_attach ;
 int umt_mt352_demod_init ;

__attribute__((used)) static int umt_mt352_frontend_attach(struct dvb_usb_adapter *adap)
{
 struct mt352_config umt_config;

 memset(&umt_config,0,sizeof(struct mt352_config));
 umt_config.demod_init = umt_mt352_demod_init;
 umt_config.demod_address = 0xf;

 adap->fe = dvb_attach(mt352_attach, &umt_config, &adap->dev->i2c_adap);

 return 0;
}
