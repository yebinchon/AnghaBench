
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct i2c_adapter {int dummy; } ;
struct dvb_usb_adapter {size_t id; int fe; TYPE_3__* dev; } ;
typedef int s8 ;
struct TYPE_6__ {TYPE_2__* udev; struct i2c_adapter i2c_adap; } ;
struct TYPE_4__ {scalar_t__ idVendor; scalar_t__ idProduct; } ;
struct TYPE_5__ {TYPE_1__ descriptor; } ;


 int ENODEV ;
 int USB_PID_HAUPPAUGE_NOVA_T_500_2 ;
 int USB_VID_HAUPPAUGE ;
 int * bristol_mt2060_config ;
 scalar_t__ cpu_to_le16 (int ) ;
 struct i2c_adapter* dib3000mc_get_tuner_i2c_master (int ,int) ;
 int * dvb_attach (int ,int ,struct i2c_adapter*,int *,int) ;
 int eeprom_read (struct i2c_adapter*,size_t,int*) ;
 int mt2060_attach ;

__attribute__((used)) static int bristol_tuner_attach(struct dvb_usb_adapter *adap)
{
 struct i2c_adapter *prim_i2c = &adap->dev->i2c_adap;
 struct i2c_adapter *tun_i2c = dib3000mc_get_tuner_i2c_master(adap->fe, 1);
 s8 a;
 int if1=1220;
 if (adap->dev->udev->descriptor.idVendor == cpu_to_le16(USB_VID_HAUPPAUGE) &&
  adap->dev->udev->descriptor.idProduct == cpu_to_le16(USB_PID_HAUPPAUGE_NOVA_T_500_2)) {
  if (!eeprom_read(prim_i2c,0x59 + adap->id,&a)) if1=1220+a;
 }
 return dvb_attach(mt2060_attach,adap->fe, tun_i2c,&bristol_mt2060_config[adap->id],
  if1) == ((void*)0) ? -ENODEV : 0;
}
