
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_9__ ;
typedef struct TYPE_24__ TYPE_8__ ;
typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_14__ ;
typedef struct TYPE_15__ TYPE_10__ ;


typedef int u8 ;
struct usbnet {unsigned long* data; TYPE_10__* udev; int rx_urb_size; int * status; int out; int in; TYPE_7__* net; int hard_mtu; } ;
struct usb_interface {TYPE_8__* cur_altsetting; int dev; TYPE_9__* intf_assoc; } ;
struct usb_driver {int dummy; } ;
struct usb_cdc_union_desc {int bMasterInterface0; int bSlaveInterface0; } ;
struct usb_cdc_ncm_desc {int dummy; } ;
struct usb_cdc_mbim_desc {int dummy; } ;
struct usb_cdc_ether_desc {int iMACAddress; int wMaxSegmentSize; } ;
struct TYPE_22__ {unsigned long data; int func; } ;
struct TYPE_16__ {int * function; } ;
struct cdc_ncm_ctx {struct usb_interface* data; struct usb_interface* control; scalar_t__ rx_speed; scalar_t__ tx_speed; int rx_max; int * status_ep; TYPE_5__* out_ep; TYPE_3__* in_ep; struct usb_cdc_ether_desc const* ether_desc; struct usb_interface* intf; struct usb_cdc_mbim_desc const* mbim_desc; struct usb_cdc_union_desc const* union_desc; struct usb_cdc_ncm_desc const* func_desc; TYPE_10__* udev; TYPE_7__* netdev; int mtx; int stop; TYPE_6__ bh; TYPE_14__ tx_timer; } ;
struct TYPE_25__ {int bInterfaceCount; } ;
struct TYPE_17__ {int bInterfaceNumber; } ;
struct TYPE_24__ {int* extra; int extralen; TYPE_1__ desc; } ;
struct TYPE_23__ {int dev_addr; int * ethtool_ops; } ;
struct TYPE_20__ {int bEndpointAddress; } ;
struct TYPE_21__ {TYPE_4__ desc; } ;
struct TYPE_18__ {int bEndpointAddress; } ;
struct TYPE_19__ {TYPE_2__ desc; } ;
struct TYPE_15__ {int dev; } ;


 int CDC_NCM_MAX_DATAGRAM_SIZE ;
 int CDC_NCM_MIN_DATAGRAM_SIZE ;
 int CLOCK_MONOTONIC ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HRTIMER_MODE_REL ;




 int USB_DT_CS_INTERFACE ;
 int USB_ENDPOINT_NUMBER_MASK ;
 int atomic_set (int *,int ) ;
 int cdc_ncm_ethtool_ops ;
 int cdc_ncm_find_endpoints (struct cdc_ncm_ctx*,struct usb_interface*) ;
 int cdc_ncm_free (struct cdc_ncm_ctx*) ;
 scalar_t__ cdc_ncm_setup (struct cdc_ncm_ctx*) ;
 int cdc_ncm_tx_timer_cb ;
 int cdc_ncm_txpath_bh ;
 int dev_dbg (int *,char*) ;
 int dev_info (int *,char*,...) ;
 struct usb_driver* driver_of (struct usb_interface*) ;
 int hrtimer_init (TYPE_14__*,int ,int ) ;
 struct cdc_ncm_ctx* kzalloc (int,int ) ;
 int le16_to_cpu (int ) ;
 int spin_lock_init (int *) ;
 int usb_driver_claim_interface (struct usb_driver*,struct usb_interface*,struct usbnet*) ;
 int usb_driver_release_interface (struct usb_driver*,struct usb_interface*) ;
 void* usb_ifnum_to_if (TYPE_10__*,int) ;
 int usb_rcvbulkpipe (TYPE_10__*,int) ;
 int usb_set_interface (TYPE_10__*,int,int) ;
 int usb_set_intfdata (struct usb_interface*,struct usbnet*) ;
 int usb_sndbulkpipe (TYPE_10__*,int) ;
 int usbnet_get_ethernet_addr (struct usbnet*,int ) ;

int cdc_ncm_bind_common(struct usbnet *dev, struct usb_interface *intf, u8 data_altsetting)
{
 struct cdc_ncm_ctx *ctx;
 struct usb_driver *driver;
 u8 *buf;
 int len;
 int temp;
 u8 iface_no;

 ctx = kzalloc(sizeof(*ctx), GFP_KERNEL);
 if (!ctx)
  return -ENOMEM;

 hrtimer_init(&ctx->tx_timer, CLOCK_MONOTONIC, HRTIMER_MODE_REL);
 ctx->tx_timer.function = &cdc_ncm_tx_timer_cb;
 ctx->bh.data = (unsigned long)ctx;
 ctx->bh.func = cdc_ncm_txpath_bh;
 atomic_set(&ctx->stop, 0);
 spin_lock_init(&ctx->mtx);
 ctx->netdev = dev->net;


 dev->data[0] = (unsigned long)ctx;


 driver = driver_of(intf);
 buf = intf->cur_altsetting->extra;
 len = intf->cur_altsetting->extralen;

 ctx->udev = dev->udev;
 ctx->intf = intf;


 while ((len > 0) && (buf[0] > 2) && (buf[0] <= len)) {

  if (buf[1] != USB_DT_CS_INTERFACE)
   goto advance;

  switch (buf[2]) {
  case 128:
   if (buf[0] < sizeof(*(ctx->union_desc)))
    break;

   ctx->union_desc =
     (const struct usb_cdc_union_desc *)buf;

   ctx->control = usb_ifnum_to_if(dev->udev,
     ctx->union_desc->bMasterInterface0);
   ctx->data = usb_ifnum_to_if(dev->udev,
     ctx->union_desc->bSlaveInterface0);
   break;

  case 131:
   if (buf[0] < sizeof(*(ctx->ether_desc)))
    break;

   ctx->ether_desc =
     (const struct usb_cdc_ether_desc *)buf;
   dev->hard_mtu =
    le16_to_cpu(ctx->ether_desc->wMaxSegmentSize);

   if (dev->hard_mtu < CDC_NCM_MIN_DATAGRAM_SIZE)
    dev->hard_mtu = CDC_NCM_MIN_DATAGRAM_SIZE;
   else if (dev->hard_mtu > CDC_NCM_MAX_DATAGRAM_SIZE)
    dev->hard_mtu = CDC_NCM_MAX_DATAGRAM_SIZE;
   break;

  case 129:
   if (buf[0] < sizeof(*(ctx->func_desc)))
    break;

   ctx->func_desc = (const struct usb_cdc_ncm_desc *)buf;
   break;

  case 130:
   if (buf[0] < sizeof(*(ctx->mbim_desc)))
    break;

   ctx->mbim_desc = (const struct usb_cdc_mbim_desc *)buf;
   break;

  default:
   break;
  }
advance:

  temp = buf[0];
  buf += temp;
  len -= temp;
 }


 if (!ctx->union_desc && intf->intf_assoc && intf->intf_assoc->bInterfaceCount == 2) {
  ctx->control = intf;
  ctx->data = usb_ifnum_to_if(dev->udev, intf->cur_altsetting->desc.bInterfaceNumber + 1);
  dev_dbg(&intf->dev, "CDC Union missing - got slave from IAD\n");
 }


 if ((ctx->control == ((void*)0)) || (ctx->data == ((void*)0)) ||
     ((!ctx->mbim_desc) && ((ctx->ether_desc == ((void*)0)) || (ctx->control != intf))))
  goto error;


 if (ctx->data != ctx->control) {
  temp = usb_driver_claim_interface(driver, ctx->data, dev);
  if (temp)
   goto error;
 }

 iface_no = ctx->data->cur_altsetting->desc.bInterfaceNumber;


 temp = usb_set_interface(dev->udev, iface_no, 0);
 if (temp)
  goto error2;


 if (cdc_ncm_setup(ctx))
  goto error2;


 temp = usb_set_interface(dev->udev, iface_no, data_altsetting);
 if (temp)
  goto error2;

 cdc_ncm_find_endpoints(ctx, ctx->data);
 cdc_ncm_find_endpoints(ctx, ctx->control);

 if ((ctx->in_ep == ((void*)0)) || (ctx->out_ep == ((void*)0)) ||
     (ctx->status_ep == ((void*)0)))
  goto error2;

 dev->net->ethtool_ops = &cdc_ncm_ethtool_ops;

 usb_set_intfdata(ctx->data, dev);
 usb_set_intfdata(ctx->control, dev);
 usb_set_intfdata(ctx->intf, dev);

 if (ctx->ether_desc) {
  temp = usbnet_get_ethernet_addr(dev, ctx->ether_desc->iMACAddress);
  if (temp)
   goto error2;
  dev_info(&dev->udev->dev, "MAC-Address: %pM\n", dev->net->dev_addr);
 }


 dev->in = usb_rcvbulkpipe(dev->udev,
  ctx->in_ep->desc.bEndpointAddress & USB_ENDPOINT_NUMBER_MASK);
 dev->out = usb_sndbulkpipe(dev->udev,
  ctx->out_ep->desc.bEndpointAddress & USB_ENDPOINT_NUMBER_MASK);
 dev->status = ctx->status_ep;
 dev->rx_urb_size = ctx->rx_max;

 ctx->tx_speed = ctx->rx_speed = 0;
 return 0;

error2:
 usb_set_intfdata(ctx->control, ((void*)0));
 usb_set_intfdata(ctx->data, ((void*)0));
 if (ctx->data != ctx->control)
  usb_driver_release_interface(driver, ctx->data);
error:
 cdc_ncm_free((struct cdc_ncm_ctx *)dev->data[0]);
 dev->data[0] = 0;
 dev_info(&dev->udev->dev, "bind() failure\n");
 return -ENODEV;
}
