
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hso_net {scalar_t__ mux_bulk_tx_urb; scalar_t__* mux_bulk_rx_urb_pool; } ;
struct hso_device {int dummy; } ;


 int ENODEV ;
 int MUX_BULK_RX_BUF_COUNT ;
 struct hso_net* dev2net (struct hso_device*) ;
 int usb_kill_urb (scalar_t__) ;

__attribute__((used)) static int hso_stop_net_device(struct hso_device *hso_dev)
{
 int i;
 struct hso_net *hso_net = dev2net(hso_dev);

 if (!hso_net)
  return -ENODEV;

 for (i = 0; i < MUX_BULK_RX_BUF_COUNT; i++) {
  if (hso_net->mux_bulk_rx_urb_pool[i])
   usb_kill_urb(hso_net->mux_bulk_rx_urb_pool[i]);

 }
 if (hso_net->mux_bulk_tx_urb)
  usb_kill_urb(hso_net->mux_bulk_tx_urb);

 return 0;
}
