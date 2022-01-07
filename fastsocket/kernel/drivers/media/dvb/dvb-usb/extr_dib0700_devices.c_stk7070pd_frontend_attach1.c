
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_usb_adapter {int * fe; TYPE_1__* dev; } ;
struct TYPE_2__ {int i2c_adap; } ;


 int ENODEV ;
 int dib7000p_attach ;
 int * dvb_attach (int ,int *,int,int *) ;
 int * stk7070pd_dib7000p_config ;

__attribute__((used)) static int stk7070pd_frontend_attach1(struct dvb_usb_adapter *adap)
{
 adap->fe = dvb_attach(dib7000p_attach, &adap->dev->i2c_adap, 0x82, &stk7070pd_dib7000p_config[1]);
 return adap->fe == ((void*)0) ? -ENODEV : 0;
}
