
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct usb_interface {int dev; } ;
struct hso_net {int flags; int * skb_tx_buf; int net; } ;
struct TYPE_11__ {scalar_t__ open_count; } ;
struct TYPE_10__ {struct usb_interface* interface; } ;
struct TYPE_9__ {struct usb_interface* interface; } ;


 int GFP_NOIO ;
 int HSO_MAX_NET_DEVICES ;
 int HSO_SERIAL_TTY_MINORS ;
 int IFF_UP ;
 struct hso_net* dev2net (TYPE_2__*) ;
 TYPE_5__* dev2ser (TYPE_1__*) ;
 int dev_dbg (int *,char*) ;
 int hso_kick_transmit (TYPE_5__*) ;
 int hso_net_start_xmit (int *,int ) ;
 int hso_start_net_device (TYPE_2__*) ;
 int hso_start_serial_device (TYPE_1__*,int ) ;
 TYPE_2__** network_table ;
 TYPE_1__** serial_table ;

__attribute__((used)) static int hso_resume(struct usb_interface *iface)
{
 int i, result = 0;
 struct hso_net *hso_net;


 for (i = 0; i < HSO_SERIAL_TTY_MINORS; i++) {
  if (serial_table[i] && (serial_table[i]->interface == iface)) {
   if (dev2ser(serial_table[i])->open_count) {
    result =
        hso_start_serial_device(serial_table[i], GFP_NOIO);
    hso_kick_transmit(dev2ser(serial_table[i]));
    if (result)
     goto out;
   }
  }
 }


 for (i = 0; i < HSO_MAX_NET_DEVICES; i++) {
  if (network_table[i] &&
      (network_table[i]->interface == iface)) {
   hso_net = dev2net(network_table[i]);
   if (hso_net->flags & IFF_UP) {


    if (hso_net->skb_tx_buf) {
     dev_dbg(&iface->dev,
      "Transmitting"
      " lingering data\n");
     hso_net_start_xmit(hso_net->skb_tx_buf,
          hso_net->net);
     hso_net->skb_tx_buf = ((void*)0);
    }
    result = hso_start_net_device(network_table[i]);
    if (result)
     goto out;
   }
  }
 }

out:
 return result;
}
