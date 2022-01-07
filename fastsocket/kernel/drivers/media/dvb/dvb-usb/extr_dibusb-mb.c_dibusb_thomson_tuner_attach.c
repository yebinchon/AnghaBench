
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_usb_adapter {TYPE_1__* dev; int fe; struct dibusb_state* priv; } ;
struct dibusb_state {int tuner_addr; } ;
struct TYPE_2__ {int i2c_adap; } ;


 int DVB_PLL_TUA6010XS ;
 int dvb_attach (int ,int ,int,int *,int ) ;
 int dvb_pll_attach ;

__attribute__((used)) static int dibusb_thomson_tuner_attach(struct dvb_usb_adapter *adap)
{
 struct dibusb_state *st = adap->priv;

 st->tuner_addr = 0x61;

 dvb_attach(dvb_pll_attach, adap->fe, 0x61, &adap->dev->i2c_adap,
     DVB_PLL_TUA6010XS);
 return 0;
}
