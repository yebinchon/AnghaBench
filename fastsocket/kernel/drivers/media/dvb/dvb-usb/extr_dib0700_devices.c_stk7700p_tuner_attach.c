
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct i2c_adapter {int dummy; } ;
struct dvb_usb_adapter {int fe; TYPE_3__* dev; } ;
struct dib0700_state {scalar_t__ is_dib7000pc; } ;
typedef int s8 ;
struct TYPE_6__ {TYPE_2__* udev; struct dib0700_state* priv; struct i2c_adapter i2c_adap; } ;
struct TYPE_4__ {scalar_t__ idVendor; scalar_t__ idProduct; } ;
struct TYPE_5__ {TYPE_1__ descriptor; } ;


 int DIBX000_I2C_INTERFACE_TUNER ;
 int ENODEV ;
 int USB_PID_HAUPPAUGE_NOVA_T_STICK ;
 int USB_VID_HAUPPAUGE ;
 scalar_t__ cpu_to_le16 (int ) ;
 struct i2c_adapter* dib7000m_get_i2c_master (int ,int ,int) ;
 struct i2c_adapter* dib7000p_get_i2c_master (int ,int ,int) ;
 int * dvb_attach (int ,int ,struct i2c_adapter*,int *,int) ;
 int eeprom_read (struct i2c_adapter*,int,int*) ;
 int mt2060_attach ;
 int stk7700p_mt2060_config ;

__attribute__((used)) static int stk7700p_tuner_attach(struct dvb_usb_adapter *adap)
{
 struct i2c_adapter *prim_i2c = &adap->dev->i2c_adap;
 struct dib0700_state *st = adap->dev->priv;
 struct i2c_adapter *tun_i2c;
 s8 a;
 int if1=1220;
 if (adap->dev->udev->descriptor.idVendor == cpu_to_le16(USB_VID_HAUPPAUGE) &&
  adap->dev->udev->descriptor.idProduct == cpu_to_le16(USB_PID_HAUPPAUGE_NOVA_T_STICK)) {
  if (!eeprom_read(prim_i2c,0x58,&a)) if1=1220+a;
 }
 if (st->is_dib7000pc)
  tun_i2c = dib7000p_get_i2c_master(adap->fe, DIBX000_I2C_INTERFACE_TUNER, 1);
 else
  tun_i2c = dib7000m_get_i2c_master(adap->fe, DIBX000_I2C_INTERFACE_TUNER, 1);

 return dvb_attach(mt2060_attach, adap->fe, tun_i2c, &stk7700p_mt2060_config,
  if1) == ((void*)0) ? -ENODEV : 0;
}
