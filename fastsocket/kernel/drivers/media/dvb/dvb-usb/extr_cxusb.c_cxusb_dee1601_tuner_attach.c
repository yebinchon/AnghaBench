
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_usb_adapter {int fe; } ;


 int DVB_PLL_THOMSON_DTT7579 ;
 int dvb_attach (int ,int ,int,int *,int ) ;
 int dvb_pll_attach ;

__attribute__((used)) static int cxusb_dee1601_tuner_attach(struct dvb_usb_adapter *adap)
{
 dvb_attach(dvb_pll_attach, adap->fe, 0x61,
     ((void*)0), DVB_PLL_THOMSON_DTT7579);
 return 0;
}
