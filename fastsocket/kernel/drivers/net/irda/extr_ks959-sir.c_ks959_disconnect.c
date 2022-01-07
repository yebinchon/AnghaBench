
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct ks959_cb {int netdev; int rx_buf; int rx_setuprequest; int tx_buf_clear; int tx_buf_xored; int tx_setuprequest; int speed_setuprequest; int * rx_urb; int * tx_urb; int * speed_urb; } ;


 int free_netdev (int ) ;
 int kfree (int ) ;
 int unregister_netdev (int ) ;
 int usb_free_urb (int *) ;
 struct ks959_cb* usb_get_intfdata (struct usb_interface*) ;
 int usb_kill_urb (int *) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void ks959_disconnect(struct usb_interface *intf)
{
 struct ks959_cb *kingsun = usb_get_intfdata(intf);

 if (!kingsun)
  return;

 unregister_netdev(kingsun->netdev);


 if (kingsun->speed_urb != ((void*)0)) {
  usb_kill_urb(kingsun->speed_urb);
  usb_free_urb(kingsun->speed_urb);
  kingsun->speed_urb = ((void*)0);
 }
 if (kingsun->tx_urb != ((void*)0)) {
  usb_kill_urb(kingsun->tx_urb);
  usb_free_urb(kingsun->tx_urb);
  kingsun->tx_urb = ((void*)0);
 }
 if (kingsun->rx_urb != ((void*)0)) {
  usb_kill_urb(kingsun->rx_urb);
  usb_free_urb(kingsun->rx_urb);
  kingsun->rx_urb = ((void*)0);
 }

 kfree(kingsun->speed_setuprequest);
 kfree(kingsun->tx_setuprequest);
 kfree(kingsun->tx_buf_xored);
 kfree(kingsun->tx_buf_clear);
 kfree(kingsun->rx_setuprequest);
 kfree(kingsun->rx_buf);
 free_netdev(kingsun->netdev);

 usb_set_intfdata(intf, ((void*)0));
}
