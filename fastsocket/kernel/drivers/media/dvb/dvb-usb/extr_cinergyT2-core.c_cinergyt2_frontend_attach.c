
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_usb_adapter {int dev; int fe; } ;
typedef int state ;
typedef int query ;


 char CINERGYT2_EP1_GET_FIRMWARE_VERSION ;
 int cinergyt2_fe_attach (int ) ;
 int cinergyt2_usb_device ;
 int deb_rc (char*) ;
 int dvb_usb_generic_rw (int ,char*,int,char*,int,int ) ;

__attribute__((used)) static int cinergyt2_frontend_attach(struct dvb_usb_adapter *adap)
{
 char query[] = { CINERGYT2_EP1_GET_FIRMWARE_VERSION };
 char state[3];
 int ret;

 adap->fe = cinergyt2_fe_attach(adap->dev);

 ret = dvb_usb_generic_rw(adap->dev, query, sizeof(query), state,
    sizeof(state), 0);
 if (ret < 0) {
  deb_rc("cinergyt2_power_ctrl() Failed to retrieve sleep "
   "state info\n");
 }


 cinergyt2_usb_device = adap->dev;

 return 0;
}
