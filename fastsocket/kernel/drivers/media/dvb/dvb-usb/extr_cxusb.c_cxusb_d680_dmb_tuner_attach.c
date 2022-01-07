
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_usb_adapter {TYPE_1__* dev; int fe; } ;
struct dvb_frontend {int dummy; } ;
struct TYPE_2__ {int i2c_adap; } ;


 int EIO ;
 int d680_dmb_tuner ;
 struct dvb_frontend* dvb_attach (int ,int ,int *,int *) ;
 int mxl5005s_attach ;

__attribute__((used)) static int cxusb_d680_dmb_tuner_attach(struct dvb_usb_adapter *adap)
{
 struct dvb_frontend *fe;
 fe = dvb_attach(mxl5005s_attach, adap->fe,
   &adap->dev->i2c_adap, &d680_dmb_tuner);
 return (fe == ((void*)0)) ? -EIO : 0;
}
