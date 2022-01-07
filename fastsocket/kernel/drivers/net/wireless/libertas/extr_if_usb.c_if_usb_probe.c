
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct usb_interface {struct usb_host_interface* cur_altsetting; } ;
struct TYPE_5__ {int bNumEndpoints; } ;
struct usb_host_interface {TYPE_2__* endpoint; TYPE_1__ desc; } ;
struct usb_endpoint_descriptor {int wMaxPacketSize; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_7__ {int bcdDevice; int bDeviceProtocol; int bDeviceSubClass; int bDeviceClass; int bcdUSB; } ;
struct usb_device {TYPE_3__ descriptor; int dev; } ;
struct lbs_private {int fw_ready; TYPE_4__* dev; int reset_card; int hw_host_to_card; } ;
struct if_usb_card {int boot2_version; struct lbs_private* priv; int ep_out_buf; void* tx_urb; void* rx_urb; void* ep_in_size; void* ep_out_size; void* ep_out; void* ep_in; struct usb_device* udev; int fw_wq; int fw_timeout; } ;
struct TYPE_8__ {int dev; } ;
struct TYPE_6__ {struct usb_endpoint_descriptor desc; } ;


 int BOOT_CMD_FW_BY_USB ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MRVDRV_ETH_TX_PACKET_BUFFER_SIZE ;
 scalar_t__ __if_usb_prog_firmware (struct if_usb_card*,int ,int ) ;
 int dev_attr_lbs_flash_boot2 ;
 int dev_attr_lbs_flash_fw ;
 scalar_t__ device_create_file (int *,int *) ;
 int if_usb_free (struct if_usb_card*) ;
 int if_usb_fw_timeo ;
 int if_usb_host_to_card ;
 int if_usb_reset_device (struct if_usb_card*) ;
 int if_usb_reset_olpc_card ;
 int if_usb_setup_firmware (struct lbs_private*) ;
 int if_usb_submit_rx_urb (struct if_usb_card*) ;
 int init_waitqueue_head (int *) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int kmalloc (int ,int ) ;
 struct if_usb_card* kzalloc (int,int ) ;
 struct lbs_private* lbs_add_card (struct if_usb_card*,int *) ;
 int lbs_deb_usbd (int *,char*,...) ;
 int lbs_fw_name ;
 int lbs_pr_err (char*) ;
 int lbs_remove_card (struct lbs_private*) ;
 scalar_t__ lbs_start_card (struct lbs_private*) ;
 void* le16_to_cpu (int ) ;
 scalar_t__ machine_is_olpc () ;
 int setup_timer (int *,int ,unsigned long) ;
 void* usb_alloc_urb (int ,int ) ;
 scalar_t__ usb_endpoint_is_bulk_in (struct usb_endpoint_descriptor*) ;
 scalar_t__ usb_endpoint_is_bulk_out (struct usb_endpoint_descriptor*) ;
 void* usb_endpoint_num (struct usb_endpoint_descriptor*) ;
 int usb_get_dev (struct usb_device*) ;
 int usb_set_intfdata (struct usb_interface*,struct if_usb_card*) ;

__attribute__((used)) static int if_usb_probe(struct usb_interface *intf,
   const struct usb_device_id *id)
{
 struct usb_device *udev;
 struct usb_host_interface *iface_desc;
 struct usb_endpoint_descriptor *endpoint;
 struct lbs_private *priv;
 struct if_usb_card *cardp;
 int i;

 udev = interface_to_usbdev(intf);

 cardp = kzalloc(sizeof(struct if_usb_card), GFP_KERNEL);
 if (!cardp) {
  lbs_pr_err("Out of memory allocating private data.\n");
  goto error;
 }

 setup_timer(&cardp->fw_timeout, if_usb_fw_timeo, (unsigned long)cardp);
 init_waitqueue_head(&cardp->fw_wq);

 cardp->udev = udev;
 iface_desc = intf->cur_altsetting;

 lbs_deb_usbd(&udev->dev, "bcdUSB = 0x%X bDeviceClass = 0x%X"
       " bDeviceSubClass = 0x%X, bDeviceProtocol = 0x%X\n",
       le16_to_cpu(udev->descriptor.bcdUSB),
       udev->descriptor.bDeviceClass,
       udev->descriptor.bDeviceSubClass,
       udev->descriptor.bDeviceProtocol);

 for (i = 0; i < iface_desc->desc.bNumEndpoints; ++i) {
  endpoint = &iface_desc->endpoint[i].desc;
  if (usb_endpoint_is_bulk_in(endpoint)) {
   cardp->ep_in_size = le16_to_cpu(endpoint->wMaxPacketSize);
   cardp->ep_in = usb_endpoint_num(endpoint);

   lbs_deb_usbd(&udev->dev, "in_endpoint = %d\n", cardp->ep_in);
   lbs_deb_usbd(&udev->dev, "Bulk in size is %d\n", cardp->ep_in_size);

  } else if (usb_endpoint_is_bulk_out(endpoint)) {
   cardp->ep_out_size = le16_to_cpu(endpoint->wMaxPacketSize);
   cardp->ep_out = usb_endpoint_num(endpoint);

   lbs_deb_usbd(&udev->dev, "out_endpoint = %d\n", cardp->ep_out);
   lbs_deb_usbd(&udev->dev, "Bulk out size is %d\n", cardp->ep_out_size);
  }
 }
 if (!cardp->ep_out_size || !cardp->ep_in_size) {
  lbs_deb_usbd(&udev->dev, "Endpoints not found\n");
  goto dealloc;
 }
 if (!(cardp->rx_urb = usb_alloc_urb(0, GFP_KERNEL))) {
  lbs_deb_usbd(&udev->dev, "Rx URB allocation failed\n");
  goto dealloc;
 }
 if (!(cardp->tx_urb = usb_alloc_urb(0, GFP_KERNEL))) {
  lbs_deb_usbd(&udev->dev, "Tx URB allocation failed\n");
  goto dealloc;
 }
 cardp->ep_out_buf = kmalloc(MRVDRV_ETH_TX_PACKET_BUFFER_SIZE, GFP_KERNEL);
 if (!cardp->ep_out_buf) {
  lbs_deb_usbd(&udev->dev, "Could not allocate buffer\n");
  goto dealloc;
 }


 if (__if_usb_prog_firmware(cardp, lbs_fw_name, BOOT_CMD_FW_BY_USB)) {
  lbs_deb_usbd(&udev->dev, "FW upload failed\n");
  goto err_prog_firmware;
 }

 if (!(priv = lbs_add_card(cardp, &udev->dev)))
  goto err_prog_firmware;

 cardp->priv = priv;
 cardp->priv->fw_ready = 1;

 priv->hw_host_to_card = if_usb_host_to_card;





 cardp->boot2_version = udev->descriptor.bcdDevice;

 if_usb_submit_rx_urb(cardp);

 if (lbs_start_card(priv))
  goto err_start_card;

 if_usb_setup_firmware(priv);

 usb_get_dev(udev);
 usb_set_intfdata(intf, cardp);

 if (device_create_file(&priv->dev->dev, &dev_attr_lbs_flash_fw))
  lbs_pr_err("cannot register lbs_flash_fw attribute\n");

 if (device_create_file(&priv->dev->dev, &dev_attr_lbs_flash_boot2))
  lbs_pr_err("cannot register lbs_flash_boot2 attribute\n");

 return 0;

err_start_card:
 lbs_remove_card(priv);
err_prog_firmware:
 if_usb_reset_device(cardp);
dealloc:
 if_usb_free(cardp);

error:
 return -ENOMEM;
}
