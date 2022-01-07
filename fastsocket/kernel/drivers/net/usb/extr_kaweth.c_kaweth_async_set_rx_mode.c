
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kaweth_device {scalar_t__ packet_filter_bitmap; int scratch; int dev; } ;
typedef scalar_t__ __u16 ;


 int KAWETH_COMMAND_SET_PACKET_FILTER ;
 int KAWETH_CONTROL_TIMEOUT ;
 int USB_DIR_OUT ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int dbg (char*,scalar_t__) ;
 int err (char*,int) ;
 scalar_t__ in_interrupt () ;
 int kaweth_control (struct kaweth_device*,int ,int ,int,scalar_t__,int ,void*,int ,int ) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static void kaweth_async_set_rx_mode(struct kaweth_device *kaweth)
{
 int result;
 __u16 packet_filter_bitmap = kaweth->packet_filter_bitmap;

 kaweth->packet_filter_bitmap = 0;
 if (packet_filter_bitmap == 0)
  return;

 if (in_interrupt())
  return;

 result = kaweth_control(kaweth,
    usb_sndctrlpipe(kaweth->dev, 0),
    KAWETH_COMMAND_SET_PACKET_FILTER,
    USB_TYPE_VENDOR | USB_DIR_OUT | USB_RECIP_DEVICE,
    packet_filter_bitmap,
    0,
    (void *)&kaweth->scratch,
    0,
    KAWETH_CONTROL_TIMEOUT);

 if(result < 0) {
  err("Failed to set Rx mode: %d", result);
 }
 else {
  dbg("Set Rx mode to %d", packet_filter_bitmap);
 }
}
