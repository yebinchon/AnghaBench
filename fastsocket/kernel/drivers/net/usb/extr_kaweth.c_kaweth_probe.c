
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_interface {int dev; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_4__ {int bcdDevice; scalar_t__ bDescriptorType; scalar_t__ bLength; int idProduct; int idVendor; } ;
struct usb_device {TYPE_1__ descriptor; int devnum; } ;
struct net_device {int mtu; int name; int features; int watchdog_timeo; int * netdev_ops; int dev_addr; int broadcast; } ;
struct TYPE_6__ {int statistics_mask; int max_multicast_filters; int segment_size; scalar_t__* const hw_addr; } ;
struct kaweth_device {void* tx_urb; void* rx_urb; void* irq_urb; int intbufferhandle; void* intbuffer; struct usb_device* dev; int rxbufferhandle; void* rx_buf; struct net_device* net; int lowmem_work; TYPE_3__ configuration; struct usb_interface* intf; int * firmware_buf; int term_wait; int device_lock; } ;
typedef scalar_t__* eth_addr_t ;
typedef int bcast_addr ;
typedef int __u8 ;
struct TYPE_5__ {int member_0; int member_1; int member_2; int member_3; int member_4; int member_5; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INTBUFFERSIZE ;
 int KAWETH_BUF_SIZE ;
 int KAWETH_PACKET_FILTER_BROADCAST ;
 int KAWETH_PACKET_FILTER_DIRECTED ;
 int KAWETH_PACKET_FILTER_MULTICAST ;
 int KAWETH_SOFS_TO_WAIT ;
 int KAWETH_TX_TIMEOUT ;
 int NETIF_F_HIGHDMA ;
 int SET_ETHTOOL_OPS (struct net_device*,int *) ;
 int SET_NETDEV_DEV (struct net_device*,int *) ;
 scalar_t__ __get_free_page (int ) ;
 struct net_device* alloc_etherdev (int) ;
 int dbg (char*,...) ;
 int dev_info (int *,char*,...) ;
 scalar_t__ dma_supported (int *,int) ;
 int err (char*,...) ;
 int free_netdev (struct net_device*) ;
 int free_page (unsigned long) ;
 int init_waitqueue_head (int *) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int kaweth_download_firmware (struct kaweth_device*,char*,int,int) ;
 int kaweth_netdev_ops ;
 int kaweth_read_configuration (struct kaweth_device*) ;
 int kaweth_reset (struct kaweth_device*) ;
 int kaweth_resubmit_tl ;
 int kaweth_set_receive_filter (struct kaweth_device*,int) ;
 scalar_t__ kaweth_set_sofs_wait (struct kaweth_device*,int ) ;
 scalar_t__ kaweth_set_urb_size (struct kaweth_device*,int ) ;
 int kaweth_trigger_firmware (struct kaweth_device*,int) ;
 int le16_to_cpu (int ) ;
 int memcmp (scalar_t__* const*,scalar_t__* const*,int) ;
 int memcpy (int ,scalar_t__* const*,int) ;
 struct kaweth_device* netdev_priv (struct net_device*) ;
 int ops ;
 scalar_t__ register_netdev (struct net_device*) ;
 int spin_lock_init (int *) ;
 void* usb_alloc_urb (int ,int ) ;
 void* usb_buffer_alloc (struct usb_device*,int ,int ,int *) ;
 int usb_buffer_free (struct usb_device*,int ,void*,int ) ;
 int usb_free_urb (void*) ;
 int usb_set_intfdata (struct usb_interface*,struct kaweth_device*) ;

__attribute__((used)) static int kaweth_probe(
  struct usb_interface *intf,
  const struct usb_device_id *id
 )
{
 struct usb_device *dev = interface_to_usbdev(intf);
 struct kaweth_device *kaweth;
 struct net_device *netdev;
 const eth_addr_t bcast_addr = { 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF };
 int result = 0;

 dbg("Kawasaki Device Probe (Device number:%d): 0x%4.4x:0x%4.4x:0x%4.4x",
   dev->devnum,
   le16_to_cpu(dev->descriptor.idVendor),
   le16_to_cpu(dev->descriptor.idProduct),
   le16_to_cpu(dev->descriptor.bcdDevice));

 dbg("Device at %p", dev);

 dbg("Descriptor length: %x type: %x",
   (int)dev->descriptor.bLength,
   (int)dev->descriptor.bDescriptorType);

 netdev = alloc_etherdev(sizeof(*kaweth));
 if (!netdev)
  return -ENOMEM;

 kaweth = netdev_priv(netdev);
 kaweth->dev = dev;
 kaweth->net = netdev;

 spin_lock_init(&kaweth->device_lock);
 init_waitqueue_head(&kaweth->term_wait);

 dbg("Resetting.");

 kaweth_reset(kaweth);






 if (le16_to_cpu(dev->descriptor.bcdDevice) >> 8) {
  dev_info(&intf->dev, "Firmware present in device.\n");
 } else {

  dev_info(&intf->dev, "Downloading firmware...\n");
  kaweth->firmware_buf = (__u8 *)__get_free_page(GFP_KERNEL);
  if ((result = kaweth_download_firmware(kaweth,
            "kaweth/new_code.bin",
            100,
            2)) < 0) {
   err("Error downloading firmware (%d)", result);
   goto err_fw;
  }

  if ((result = kaweth_download_firmware(kaweth,
            "kaweth/new_code_fix.bin",
            100,
            3)) < 0) {
   err("Error downloading firmware fix (%d)", result);
   goto err_fw;
  }

  if ((result = kaweth_download_firmware(kaweth,
            "kaweth/trigger_code.bin",
            126,
            2)) < 0) {
   err("Error downloading trigger code (%d)", result);
   goto err_fw;

  }

  if ((result = kaweth_download_firmware(kaweth,
            "kaweth/trigger_code_fix.bin",
            126,
            3)) < 0) {
   err("Error downloading trigger code fix (%d)", result);
   goto err_fw;
  }


  if ((result = kaweth_trigger_firmware(kaweth, 126)) < 0) {
   err("Error triggering firmware (%d)", result);
   goto err_fw;
  }


  dev_info(&intf->dev, "Firmware loaded.  I'll be back...\n");
err_fw:
  free_page((unsigned long)kaweth->firmware_buf);
  free_netdev(netdev);
  return -EIO;
 }

 result = kaweth_read_configuration(kaweth);

 if(result < 0) {
  err("Error reading configuration (%d), no net device created", result);
  goto err_free_netdev;
 }

 dev_info(&intf->dev, "Statistics collection: %x\n", kaweth->configuration.statistics_mask);
 dev_info(&intf->dev, "Multicast filter limit: %x\n", kaweth->configuration.max_multicast_filters & ((1 << 15) - 1));
 dev_info(&intf->dev, "MTU: %d\n", le16_to_cpu(kaweth->configuration.segment_size));
 dev_info(&intf->dev, "Read MAC address %2.2x:%2.2x:%2.2x:%2.2x:%2.2x:%2.2x\n",
   (int)kaweth->configuration.hw_addr[0],
   (int)kaweth->configuration.hw_addr[1],
   (int)kaweth->configuration.hw_addr[2],
   (int)kaweth->configuration.hw_addr[3],
   (int)kaweth->configuration.hw_addr[4],
   (int)kaweth->configuration.hw_addr[5]);

 if(!memcmp(&kaweth->configuration.hw_addr,
                   &bcast_addr,
     sizeof(bcast_addr))) {
  err("Firmware not functioning properly, no net device created");
  goto err_free_netdev;
 }

 if(kaweth_set_urb_size(kaweth, KAWETH_BUF_SIZE) < 0) {
  dbg("Error setting URB size");
  goto err_free_netdev;
 }

 if(kaweth_set_sofs_wait(kaweth, KAWETH_SOFS_TO_WAIT) < 0) {
  err("Error setting SOFS wait");
  goto err_free_netdev;
 }

 result = kaweth_set_receive_filter(kaweth,
                                           KAWETH_PACKET_FILTER_DIRECTED |
                                           KAWETH_PACKET_FILTER_BROADCAST |
                                           KAWETH_PACKET_FILTER_MULTICAST);

 if(result < 0) {
  err("Error setting receive filter");
  goto err_free_netdev;
 }

 dbg("Initializing net device.");

 kaweth->intf = intf;

 kaweth->tx_urb = usb_alloc_urb(0, GFP_KERNEL);
 if (!kaweth->tx_urb)
  goto err_free_netdev;
 kaweth->rx_urb = usb_alloc_urb(0, GFP_KERNEL);
 if (!kaweth->rx_urb)
  goto err_only_tx;
 kaweth->irq_urb = usb_alloc_urb(0, GFP_KERNEL);
 if (!kaweth->irq_urb)
  goto err_tx_and_rx;

 kaweth->intbuffer = usb_buffer_alloc( kaweth->dev,
      INTBUFFERSIZE,
      GFP_KERNEL,
      &kaweth->intbufferhandle);
 if (!kaweth->intbuffer)
  goto err_tx_and_rx_and_irq;
 kaweth->rx_buf = usb_buffer_alloc( kaweth->dev,
      KAWETH_BUF_SIZE,
      GFP_KERNEL,
      &kaweth->rxbufferhandle);
 if (!kaweth->rx_buf)
  goto err_all_but_rxbuf;

 memcpy(netdev->broadcast, &bcast_addr, sizeof(bcast_addr));
 memcpy(netdev->dev_addr, &kaweth->configuration.hw_addr,
               sizeof(kaweth->configuration.hw_addr));

 netdev->netdev_ops = &kaweth_netdev_ops;
 netdev->watchdog_timeo = KAWETH_TX_TIMEOUT;
 netdev->mtu = le16_to_cpu(kaweth->configuration.segment_size);
 SET_ETHTOOL_OPS(netdev, &ops);


 INIT_DELAYED_WORK(&kaweth->lowmem_work, kaweth_resubmit_tl);
 usb_set_intfdata(intf, kaweth);







 SET_NETDEV_DEV(netdev, &intf->dev);
 if (register_netdev(netdev) != 0) {
  err("Error registering netdev.");
  goto err_intfdata;
 }

 dev_info(&intf->dev, "kaweth interface created at %s\n",
   kaweth->net->name);

 dbg("Kaweth probe returning.");

 return 0;

err_intfdata:
 usb_set_intfdata(intf, ((void*)0));
 usb_buffer_free(kaweth->dev, KAWETH_BUF_SIZE, (void *)kaweth->rx_buf, kaweth->rxbufferhandle);
err_all_but_rxbuf:
 usb_buffer_free(kaweth->dev, INTBUFFERSIZE, (void *)kaweth->intbuffer, kaweth->intbufferhandle);
err_tx_and_rx_and_irq:
 usb_free_urb(kaweth->irq_urb);
err_tx_and_rx:
 usb_free_urb(kaweth->rx_urb);
err_only_tx:
 usb_free_urb(kaweth->tx_urb);
err_free_netdev:
 free_netdev(netdev);

 return -EIO;
}
