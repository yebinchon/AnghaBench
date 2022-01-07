
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct mcs_cb {int netdev; } ;


 int IRDA_DEBUG (int ,char*) ;
 int flush_scheduled_work () ;
 int free_netdev (int ) ;
 int unregister_netdev (int ) ;
 struct mcs_cb* usb_get_intfdata (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void mcs_disconnect(struct usb_interface *intf)
{
 struct mcs_cb *mcs = usb_get_intfdata(intf);

 if (!mcs)
  return;

 flush_scheduled_work();

 unregister_netdev(mcs->netdev);
 free_netdev(mcs->netdev);

 usb_set_intfdata(intf, ((void*)0));
 IRDA_DEBUG(0, "MCS7780 now disconnected.\n");
}
