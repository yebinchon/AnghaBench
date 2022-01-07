
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_usb_adapter {TYPE_1__* dev; int * fe; } ;
struct digitv_state {int is_nxt6000; } ;
struct TYPE_2__ {int i2c_adap; struct digitv_state* priv; } ;


 int EIO ;
 int digitv_mt352_config ;
 int digitv_nxt6000_config ;
 void* dvb_attach (int ,int *,int *) ;
 int mt352_attach ;
 int nxt6000_attach ;

__attribute__((used)) static int digitv_frontend_attach(struct dvb_usb_adapter *adap)
{
 struct digitv_state *st = adap->dev->priv;

 if ((adap->fe = dvb_attach(mt352_attach, &digitv_mt352_config, &adap->dev->i2c_adap)) != ((void*)0)) {
  st->is_nxt6000 = 0;
  return 0;
 }
 if ((adap->fe = dvb_attach(nxt6000_attach, &digitv_nxt6000_config, &adap->dev->i2c_adap)) != ((void*)0)) {
  st->is_nxt6000 = 1;
  return 0;
 }
 return -EIO;
}
