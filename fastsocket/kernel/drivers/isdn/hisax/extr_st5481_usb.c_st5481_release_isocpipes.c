
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int transfer_buffer; } ;


 int kfree (int ) ;
 int usb_free_urb (struct urb*) ;
 int usb_kill_urb (struct urb*) ;

void st5481_release_isocpipes(struct urb* urb[2])
{
 int j;

 for (j = 0; j < 2; j++) {
  usb_kill_urb(urb[j]);
  kfree(urb[j]->transfer_buffer);
  usb_free_urb(urb[j]);
  urb[j] = ((void*)0);
 }
}
