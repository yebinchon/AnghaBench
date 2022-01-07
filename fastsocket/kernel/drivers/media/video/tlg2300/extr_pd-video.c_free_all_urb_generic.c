
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int transfer_dma; int transfer_buffer; int transfer_buffer_length; int dev; } ;


 int usb_buffer_free (int ,int ,int ,int ) ;
 int usb_free_urb (struct urb*) ;

void free_all_urb_generic(struct urb **urb_array, int num)
{
 int i;
 struct urb *urb;

 for (i = 0; i < num; i++) {
  urb = urb_array[i];
  if (urb) {
   usb_buffer_free(urb->dev,
     urb->transfer_buffer_length,
     urb->transfer_buffer,
     urb->transfer_dma);
   usb_free_urb(urb);
   urb_array[i] = ((void*)0);
  }
 }
}
