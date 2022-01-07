
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbtouch_usb {int buffer; int data_dma; int data; TYPE_1__* type; } ;
struct usb_device {int dummy; } ;
struct TYPE_2__ {int rept_size; } ;


 int kfree (int ) ;
 int usb_buffer_free (struct usb_device*,int ,int ,int ) ;

__attribute__((used)) static void usbtouch_free_buffers(struct usb_device *udev,
      struct usbtouch_usb *usbtouch)
{
 usb_buffer_free(udev, usbtouch->type->rept_size,
                 usbtouch->data, usbtouch->data_dma);
 kfree(usbtouch->buffer);
}
