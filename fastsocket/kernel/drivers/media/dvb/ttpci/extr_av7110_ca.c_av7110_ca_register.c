
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct av7110 {int ca_dev; int dvb_adapter; } ;


 int DVB_DEVICE_CA ;
 int dvb_register_device (int *,int *,int *,struct av7110*,int ) ;
 int dvbdev_ca ;

int av7110_ca_register(struct av7110 *av7110)
{
 return dvb_register_device(&av7110->dvb_adapter, &av7110->ca_dev,
       &dvbdev_ca, av7110, DVB_DEVICE_CA);
}
