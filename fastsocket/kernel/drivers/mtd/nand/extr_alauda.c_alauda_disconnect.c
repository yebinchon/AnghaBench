
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dev; } ;
struct alauda {int kref; } ;


 int alauda_delete ;
 int dev_info (int *,char*) ;
 int kref_put (int *,int ) ;
 struct alauda* usb_get_intfdata (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void alauda_disconnect(struct usb_interface *interface)
{
 struct alauda *al;

 al = usb_get_intfdata(interface);
 usb_set_intfdata(interface, ((void*)0));




 if (al)
  kref_put(&al->kref, alauda_delete);

 dev_info(&interface->dev, "alauda gone");
}
