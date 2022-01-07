
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ati_remote2 {int * buf_dma; int * buf; int udev; int * urb; } ;


 int usb_buffer_free (int ,int,int ,int ) ;
 int usb_free_urb (int ) ;

__attribute__((used)) static void ati_remote2_urb_cleanup(struct ati_remote2 *ar2)
{
 int i;

 for (i = 0; i < 2; i++) {
  usb_free_urb(ar2->urb[i]);
  usb_buffer_free(ar2->udev, 4, ar2->buf[i], ar2->buf_dma[i]);
 }
}
