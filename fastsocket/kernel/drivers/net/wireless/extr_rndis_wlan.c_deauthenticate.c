
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int dummy; } ;


 int disassociate (struct usbnet*,int) ;
 int set_default_iw_params (struct usbnet*) ;

__attribute__((used)) static int deauthenticate(struct usbnet *usbdev)
{
 int ret;

 ret = disassociate(usbdev, 1);
 set_default_iw_params(usbdev);
 return ret;
}
