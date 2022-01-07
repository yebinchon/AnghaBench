
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* ctrl_urb; void* rx_urb; void* tx_urb; void* intr_urb; } ;
typedef TYPE_1__ pegasus_t ;


 int GFP_KERNEL ;
 void* usb_alloc_urb (int ,int ) ;
 int usb_free_urb (void*) ;

__attribute__((used)) static int alloc_urbs(pegasus_t * pegasus)
{
 pegasus->ctrl_urb = usb_alloc_urb(0, GFP_KERNEL);
 if (!pegasus->ctrl_urb) {
  return 0;
 }
 pegasus->rx_urb = usb_alloc_urb(0, GFP_KERNEL);
 if (!pegasus->rx_urb) {
  usb_free_urb(pegasus->ctrl_urb);
  return 0;
 }
 pegasus->tx_urb = usb_alloc_urb(0, GFP_KERNEL);
 if (!pegasus->tx_urb) {
  usb_free_urb(pegasus->rx_urb);
  usb_free_urb(pegasus->ctrl_urb);
  return 0;
 }
 pegasus->intr_urb = usb_alloc_urb(0, GFP_KERNEL);
 if (!pegasus->intr_urb) {
  usb_free_urb(pegasus->tx_urb);
  usb_free_urb(pegasus->rx_urb);
  usb_free_urb(pegasus->ctrl_urb);
  return 0;
 }

 return 1;
}
