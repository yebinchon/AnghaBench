
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct zc0301_device {scalar_t__* transfer_buffer; struct urb** urb; int * frame_current; struct usb_device* usbdev; } ;
struct usb_host_interface {TYPE_2__* endpoint; } ;
struct usb_device {int dummy; } ;
struct urb {unsigned int number_of_packets; unsigned int transfer_buffer_length; int interval; TYPE_3__* iso_frame_desc; scalar_t__ transfer_buffer; int complete; int transfer_flags; int pipe; struct zc0301_device* context; struct usb_device* dev; } ;
typedef size_t s8 ;
struct TYPE_6__ {unsigned int offset; unsigned int length; } ;
struct TYPE_4__ {int wMaxPacketSize; } ;
struct TYPE_5__ {TYPE_1__ desc; } ;


 int DBG (int,char*,...) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int URB_ISO_ASAP ;
 int ZC0301_ALTERNATE_SETTING ;
 unsigned int const ZC0301_ISO_PACKETS ;
 size_t ZC0301_URBS ;
 int kfree (scalar_t__) ;
 scalar_t__ kzalloc (unsigned int const,int ) ;
 unsigned int le16_to_cpu (int ) ;
 struct urb* usb_alloc_urb (unsigned int const,int ) ;
 struct usb_host_interface* usb_altnum_to_altsetting (int ,int ) ;
 int usb_free_urb (struct urb*) ;
 int usb_ifnum_to_if (struct usb_device*,int ) ;
 int usb_kill_urb (struct urb*) ;
 int usb_rcvisocpipe (struct usb_device*,int) ;
 int usb_set_interface (struct usb_device*,int ,int ) ;
 int usb_submit_urb (struct urb*,int ) ;
 int zc0301_urb_complete ;

__attribute__((used)) static int zc0301_start_transfer(struct zc0301_device* cam)
{
 struct usb_device *udev = cam->usbdev;
 struct usb_host_interface* altsetting = usb_altnum_to_altsetting(
           usb_ifnum_to_if(udev, 0),
           ZC0301_ALTERNATE_SETTING);
 const unsigned int psz = le16_to_cpu(altsetting->
          endpoint[0].desc.wMaxPacketSize);
 struct urb* urb;
 s8 i, j;
 int err = 0;

 for (i = 0; i < ZC0301_URBS; i++) {
  cam->transfer_buffer[i] = kzalloc(ZC0301_ISO_PACKETS * psz,
        GFP_KERNEL);
  if (!cam->transfer_buffer[i]) {
   err = -ENOMEM;
   DBG(1, "Not enough memory");
   goto free_buffers;
  }
 }

 for (i = 0; i < ZC0301_URBS; i++) {
  urb = usb_alloc_urb(ZC0301_ISO_PACKETS, GFP_KERNEL);
  cam->urb[i] = urb;
  if (!urb) {
   err = -ENOMEM;
   DBG(1, "usb_alloc_urb() failed");
   goto free_urbs;
  }
  urb->dev = udev;
  urb->context = cam;
  urb->pipe = usb_rcvisocpipe(udev, 1);
  urb->transfer_flags = URB_ISO_ASAP;
  urb->number_of_packets = ZC0301_ISO_PACKETS;
  urb->complete = zc0301_urb_complete;
  urb->transfer_buffer = cam->transfer_buffer[i];
  urb->transfer_buffer_length = psz * ZC0301_ISO_PACKETS;
  urb->interval = 1;
  for (j = 0; j < ZC0301_ISO_PACKETS; j++) {
   urb->iso_frame_desc[j].offset = psz * j;
   urb->iso_frame_desc[j].length = psz;
  }
 }

 err = usb_set_interface(udev, 0, ZC0301_ALTERNATE_SETTING);
 if (err) {
  DBG(1, "usb_set_interface() failed");
  goto free_urbs;
 }

 cam->frame_current = ((void*)0);

 for (i = 0; i < ZC0301_URBS; i++) {
  err = usb_submit_urb(cam->urb[i], GFP_KERNEL);
  if (err) {
   for (j = i-1; j >= 0; j--)
    usb_kill_urb(cam->urb[j]);
   DBG(1, "usb_submit_urb() failed, error %d", err);
   goto free_urbs;
  }
 }

 return 0;

free_urbs:
 for (i = 0; (i < ZC0301_URBS) && cam->urb[i]; i++)
  usb_free_urb(cam->urb[i]);

free_buffers:
 for (i = 0; (i < ZC0301_URBS) && cam->transfer_buffer[i]; i++)
  kfree(cam->transfer_buffer[i]);

 return err;
}
