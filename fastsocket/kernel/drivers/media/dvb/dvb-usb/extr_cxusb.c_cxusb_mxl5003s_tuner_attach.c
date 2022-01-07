
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_usb_adapter {TYPE_1__* dev; int fe; } ;
struct TYPE_2__ {int i2c_adap; } ;


 int aver_a868r_tuner ;
 int dvb_attach (int ,int ,int *,int *) ;
 int mxl5005s_attach ;

__attribute__((used)) static int cxusb_mxl5003s_tuner_attach(struct dvb_usb_adapter *adap)
{
 dvb_attach(mxl5005s_attach, adap->fe,
     &adap->dev->i2c_adap, &aver_a868r_tuner);
 return 0;
}
