
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct usbnet {int intf; int flags; int bh; scalar_t__ pkt_err; scalar_t__ pkt_cnt; struct driver_info* driver_info; TYPE_3__* net; scalar_t__ interrupt; TYPE_2__* udev; } ;
struct net_device {int dummy; } ;
struct driver_info {char* description; int (* reset ) (struct usbnet*) ;int (* check_connect ) (struct usbnet*) ;int flags; int (* manage_power ) (struct usbnet*,int) ;} ;
struct TYPE_8__ {int mtu; } ;
struct TYPE_7__ {int devpath; TYPE_1__* bus; } ;
struct TYPE_6__ {int bus_name; } ;


 int EVENT_DEV_OPEN ;
 int EVENT_NO_RUNTIME_PM ;
 int EVENT_RX_KILL ;
 int FLAG_FRAMING_AX ;
 int FLAG_FRAMING_GL ;
 int FLAG_FRAMING_NC ;
 int FLAG_FRAMING_RN ;
 int FLAG_FRAMING_Z ;
 int FLAG_RH_HAS_MANAGE_POWER ;
 int GFP_KERNEL ;
 scalar_t__ RX_QLEN (struct usbnet*) ;
 scalar_t__ TX_QLEN (struct usbnet*) ;
 int clear_bit (int ,int *) ;
 int ifup ;
 struct usbnet* netdev_priv (struct net_device*) ;
 int netif_dbg (struct usbnet*,int ,TYPE_3__*,char*,int) ;
 int netif_err (struct usbnet*,int ,TYPE_3__*,char*,int) ;
 int netif_info (struct usbnet*,int ,TYPE_3__*,char*,int,int,int ,char*) ;
 int netif_start_queue (struct net_device*) ;
 int set_bit (int ,int *) ;
 int stub1 (struct usbnet*) ;
 int stub2 (struct usbnet*) ;
 int stub3 (struct usbnet*,int) ;
 int tasklet_schedule (int *) ;
 int usb_autopm_get_interface (int ) ;
 int usb_autopm_put_interface (int ) ;
 int usbnet_status_start (struct usbnet*,int ) ;

int usbnet_open (struct net_device *net)
{
 struct usbnet *dev = netdev_priv(net);
 int retval;
 struct driver_info *info = dev->driver_info;

 if ((retval = usb_autopm_get_interface(dev->intf)) < 0) {
  netif_info(dev, ifup, dev->net,
      "resumption fail (%d) usbnet usb-%s-%s, %s\n",
      retval,
      dev->udev->bus->bus_name,
      dev->udev->devpath,
      info->description);
  goto done_nopm;
 }


 if (info->reset && (retval = info->reset (dev)) < 0) {
  netif_info(dev, ifup, dev->net,
      "open reset fail (%d) usbnet usb-%s-%s, %s\n",
      retval,
      dev->udev->bus->bus_name,
      dev->udev->devpath,
      info->description);
  goto done;
 }


 if (info->check_connect && (retval = info->check_connect (dev)) < 0) {
  netif_dbg(dev, ifup, dev->net, "can't open; %d\n", retval);
  goto done;
 }


 if (dev->interrupt) {
  retval = usbnet_status_start(dev, GFP_KERNEL);
  if (retval < 0) {
   netif_err(dev, ifup, dev->net,
      "intr submit %d\n", retval);
   goto done;
  }
 }

 set_bit(EVENT_DEV_OPEN, &dev->flags);
 netif_start_queue (net);
 netif_info(dev, ifup, dev->net,
     "open: enable queueing (rx %d, tx %d) mtu %d %s framing\n",
     (int)RX_QLEN(dev), (int)TX_QLEN(dev),
     dev->net->mtu,
     (dev->driver_info->flags & FLAG_FRAMING_NC) ? "NetChip" :
     (dev->driver_info->flags & FLAG_FRAMING_GL) ? "GeneSys" :
     (dev->driver_info->flags & FLAG_FRAMING_Z) ? "Zaurus" :
     (dev->driver_info->flags & FLAG_FRAMING_RN) ? "RNDIS" :
     (dev->driver_info->flags & FLAG_FRAMING_AX) ? "ASIX" :
     "simple");


 dev->pkt_cnt = 0;
 dev->pkt_err = 0;
 clear_bit(EVENT_RX_KILL, &dev->flags);


 tasklet_schedule (&dev->bh);
 if ((info->flags & FLAG_RH_HAS_MANAGE_POWER) && info->manage_power) {
  retval = info->manage_power(dev, 1);
  if (retval < 0) {
   retval = 0;
   set_bit(EVENT_NO_RUNTIME_PM, &dev->flags);
  } else {
   usb_autopm_put_interface(dev->intf);
  }
 }
 return retval;
done:
 usb_autopm_put_interface(dev->intf);
done_nopm:
 return retval;
}
