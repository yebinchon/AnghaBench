
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct usbnet {int dummy; } ;
struct urb {int actual_length; int transfer_buffer; } ;


 int EVENT_LINK_RESET ;
 int INT_ENP_PHY_INT_ ;
 int devdbg (struct usbnet*,char*,int) ;
 int devwarn (struct usbnet*,char*,int) ;
 int le32_to_cpus (int*) ;
 int memcpy (int*,int ,int) ;
 scalar_t__ netif_msg_link (struct usbnet*) ;
 int usbnet_defer_kevent (struct usbnet*,int ) ;

__attribute__((used)) static void smsc95xx_status(struct usbnet *dev, struct urb *urb)
{
 u32 intdata;

 if (urb->actual_length != 4) {
  devwarn(dev, "unexpected urb length %d", urb->actual_length);
  return;
 }

 memcpy(&intdata, urb->transfer_buffer, 4);
 le32_to_cpus(&intdata);

 if (netif_msg_link(dev))
  devdbg(dev, "intdata: 0x%08X", intdata);

 if (intdata & INT_ENP_PHY_INT_)
  usbnet_defer_kevent(dev, EVENT_LINK_RESET);
 else
  devwarn(dev, "unexpected interrupt, intdata=0x%08X", intdata);
}
