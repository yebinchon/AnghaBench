
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct dvb_usb_adapter {int * fe; TYPE_1__* dev; } ;
struct dib0700_state {int* mt2060_if1; int is_dib7000pc; } ;
struct TYPE_3__ {int i2c_adap; struct dib0700_state* priv; } ;


 int ENODEV ;
 int GPIO0 ;
 int GPIO10 ;
 int GPIO6 ;
 int GPIO9 ;
 int GPIO_OUT ;
 int dib0700_ctrl_clock (TYPE_1__*,int,int) ;
 int dib0700_set_gpio (TYPE_1__*,int ,int ,int) ;
 int dib7000m_attach ;
 int dib7000p_attach ;
 scalar_t__ dib7000pc_detection (int *) ;
 void* dvb_attach (int ,int *,int,int *) ;
 int msleep (int) ;
 int stk7700p_dib7000m_config ;
 int stk7700p_dib7000p_config ;

__attribute__((used)) static int stk7700p_frontend_attach(struct dvb_usb_adapter *adap)
{
 struct dib0700_state *st = adap->dev->priv;


 dib0700_set_gpio(adap->dev, GPIO10, GPIO_OUT, 0);
 dib0700_set_gpio(adap->dev, GPIO6, GPIO_OUT, 0); msleep(50);

 dib0700_set_gpio(adap->dev, GPIO6, GPIO_OUT, 1); msleep(10);
 dib0700_set_gpio(adap->dev, GPIO9, GPIO_OUT, 1);

 dib0700_set_gpio(adap->dev, GPIO10, GPIO_OUT, 0); msleep(10);
 dib0700_ctrl_clock(adap->dev, 72, 1);
 dib0700_set_gpio(adap->dev, GPIO10, GPIO_OUT, 1); msleep(100);

 dib0700_set_gpio(adap->dev, GPIO0, GPIO_OUT, 1);

 st->mt2060_if1[0] = 1220;

 if (dib7000pc_detection(&adap->dev->i2c_adap)) {
  adap->fe = dvb_attach(dib7000p_attach, &adap->dev->i2c_adap, 18, &stk7700p_dib7000p_config);
  st->is_dib7000pc = 1;
 } else
  adap->fe = dvb_attach(dib7000m_attach, &adap->dev->i2c_adap, 18, &stk7700p_dib7000m_config);

 return adap->fe == ((void*)0) ? -ENODEV : 0;
}
