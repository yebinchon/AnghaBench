
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct st5481_adapter {int hisax_d_if; int * bcs; int list; } ;


 int DBG (int,char*) ;
 int hisax_unregister (int *) ;
 int kfree (struct st5481_adapter*) ;
 int list_del (int *) ;
 int mdelay (int) ;
 int st5481_release_b (int *) ;
 int st5481_release_d (struct st5481_adapter*) ;
 int st5481_release_usb (struct st5481_adapter*) ;
 int st5481_stop (struct st5481_adapter*) ;
 struct st5481_adapter* usb_get_intfdata (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void disconnect_st5481(struct usb_interface *intf)
{
 struct st5481_adapter *adapter = usb_get_intfdata(intf);

 DBG(1,"");

 usb_set_intfdata(intf, ((void*)0));
 if (!adapter)
  return;

 list_del(&adapter->list);

 st5481_stop(adapter);
 st5481_release_b(&adapter->bcs[1]);
 st5481_release_b(&adapter->bcs[0]);
 st5481_release_d(adapter);

 mdelay(2);
 st5481_release_usb(adapter);

 hisax_unregister(&adapter->hisax_d_if);

 kfree(adapter);
}
