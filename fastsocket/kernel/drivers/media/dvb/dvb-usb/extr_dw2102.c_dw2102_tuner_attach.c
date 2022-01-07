
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_usb_adapter {TYPE_1__* dev; int fe; } ;
struct TYPE_2__ {int i2c_adap; } ;


 int DVB_PLL_OPERA1 ;
 int dvb_attach (int ,int ,int,int *,int ) ;
 int dvb_pll_attach ;

__attribute__((used)) static int dw2102_tuner_attach(struct dvb_usb_adapter *adap)
{
 dvb_attach(dvb_pll_attach, adap->fe, 0x60,
  &adap->dev->i2c_adap, DVB_PLL_OPERA1);
 return 0;
}
