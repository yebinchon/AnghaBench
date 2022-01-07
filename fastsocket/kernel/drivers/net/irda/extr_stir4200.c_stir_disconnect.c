
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct stir_cb {int netdev; } ;


 int free_netdev (int ) ;
 int unregister_netdev (int ) ;
 struct stir_cb* usb_get_intfdata (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void stir_disconnect(struct usb_interface *intf)
{
 struct stir_cb *stir = usb_get_intfdata(intf);

 if (!stir)
  return;

 unregister_netdev(stir->netdev);
 free_netdev(stir->netdev);

 usb_set_intfdata(intf, ((void*)0));
}
