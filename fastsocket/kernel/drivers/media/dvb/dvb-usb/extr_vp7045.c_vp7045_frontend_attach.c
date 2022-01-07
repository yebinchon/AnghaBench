
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u8 ;
struct dvb_usb_adapter {int dev; int fe; } ;


 int FW_VERSION_READ ;
 int PRODUCT_STRING_READ ;
 int VENDOR_STRING_READ ;
 int deb_info (char*,char*) ;
 int vp7045_fe_attach (int ) ;
 int vp7045_usb_op (int ,int ,int *,int ,char*,int,int ) ;

__attribute__((used)) static int vp7045_frontend_attach(struct dvb_usb_adapter *adap)
{
 u8 buf[255] = { 0 };

 vp7045_usb_op(adap->dev,VENDOR_STRING_READ,((void*)0),0,buf,20,0);
 buf[10] = '\0';
 deb_info("firmware says: %s ",buf);

 vp7045_usb_op(adap->dev,PRODUCT_STRING_READ,((void*)0),0,buf,20,0);
 buf[10] = '\0';
 deb_info("%s ",buf);

 vp7045_usb_op(adap->dev,FW_VERSION_READ,((void*)0),0,buf,20,0);
 buf[10] = '\0';
 deb_info("v%s\n",buf);




 adap->fe = vp7045_fe_attach(adap->dev);

 return 0;
}
