
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_interface {struct usb_host_interface* cur_altsetting; } ;
struct usb_host_interface {int dummy; } ;
struct urb {int dummy; } ;
struct TYPE_4__ {unsigned long data; int function; } ;
struct imon_context {scalar_t__ display_type; int dev_present_intf1; int dev; int lock; int * touch; struct urb* rx_urb_intf1; TYPE_1__* rx_endpoint_intf1; int usb_rx_buf; int usbdev_intf1; TYPE_2__ ttimer; } ;
struct TYPE_3__ {int bInterval; int bEndpointAddress; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IMON_DISPLAY_TYPE_VGA ;
 int dev_err (int ,char*,int) ;
 int imon_find_endpoints (struct imon_context*,struct usb_host_interface*) ;
 int * imon_init_touch (struct imon_context*) ;
 int imon_touch_display_timeout ;
 int init_timer (TYPE_2__*) ;
 int input_unregister_device (int *) ;
 int interface_to_usbdev (struct usb_interface*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*,...) ;
 struct urb* usb_alloc_urb (int ,int ) ;
 int usb_fill_int_urb (struct urb*,int ,int ,int ,int,int ,struct imon_context*,int ) ;
 int usb_free_urb (struct urb*) ;
 int usb_get_dev (int ) ;
 int usb_rcvintpipe (int ,int ) ;
 int usb_rx_callback_intf1 ;
 int usb_submit_urb (struct urb*,int ) ;

__attribute__((used)) static struct imon_context *imon_init_intf1(struct usb_interface *intf,
         struct imon_context *ictx)
{
 struct urb *rx_urb;
 struct usb_host_interface *iface_desc;
 int ret = -ENOMEM;

 rx_urb = usb_alloc_urb(0, GFP_KERNEL);
 if (!rx_urb) {
  pr_err("usb_alloc_urb failed for IR urb\n");
  goto rx_urb_alloc_failed;
 }

 mutex_lock(&ictx->lock);

 if (ictx->display_type == IMON_DISPLAY_TYPE_VGA) {
  init_timer(&ictx->ttimer);
  ictx->ttimer.data = (unsigned long)ictx;
  ictx->ttimer.function = imon_touch_display_timeout;
 }

 ictx->usbdev_intf1 = usb_get_dev(interface_to_usbdev(intf));
 ictx->dev_present_intf1 = 1;
 ictx->rx_urb_intf1 = rx_urb;

 ret = -ENODEV;
 iface_desc = intf->cur_altsetting;
 if (!imon_find_endpoints(ictx, iface_desc))
  goto find_endpoint_failed;

 if (ictx->display_type == IMON_DISPLAY_TYPE_VGA) {
  ictx->touch = imon_init_touch(ictx);
  if (!ictx->touch)
   goto touch_setup_failed;
 } else
  ictx->touch = ((void*)0);

 usb_fill_int_urb(ictx->rx_urb_intf1, ictx->usbdev_intf1,
  usb_rcvintpipe(ictx->usbdev_intf1,
   ictx->rx_endpoint_intf1->bEndpointAddress),
  ictx->usb_rx_buf, sizeof(ictx->usb_rx_buf),
  usb_rx_callback_intf1, ictx,
  ictx->rx_endpoint_intf1->bInterval);

 ret = usb_submit_urb(ictx->rx_urb_intf1, GFP_KERNEL);

 if (ret) {
  pr_err("usb_submit_urb failed for intf1 (%d)\n", ret);
  goto urb_submit_failed;
 }

 return ictx;

urb_submit_failed:
 if (ictx->touch)
  input_unregister_device(ictx->touch);
touch_setup_failed:
find_endpoint_failed:
 mutex_unlock(&ictx->lock);
 usb_free_urb(rx_urb);
rx_urb_alloc_failed:
 dev_err(ictx->dev, "unable to initialize intf0, err %d\n", ret);

 return ((void*)0);
}
