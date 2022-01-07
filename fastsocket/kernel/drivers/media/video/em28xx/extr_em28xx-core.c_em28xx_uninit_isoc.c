
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {int transfer_dma; int transfer_buffer_length; } ;
struct TYPE_2__ {int nfields; int num_bufs; struct urb** transfer_buffer; struct urb** urb; } ;
struct em28xx {TYPE_1__ isoc_ctl; int udev; } ;


 int em28xx_capture_start (struct em28xx*,int ) ;
 int em28xx_isocdbg (char*) ;
 int irqs_disabled () ;
 int kfree (struct urb**) ;
 int usb_buffer_free (int ,int ,struct urb*,int ) ;
 int usb_free_urb (struct urb*) ;
 int usb_kill_urb (struct urb*) ;
 int usb_unlink_urb (struct urb*) ;

void em28xx_uninit_isoc(struct em28xx *dev)
{
 struct urb *urb;
 int i;

 em28xx_isocdbg("em28xx: called em28xx_uninit_isoc\n");

 dev->isoc_ctl.nfields = -1;
 for (i = 0; i < dev->isoc_ctl.num_bufs; i++) {
  urb = dev->isoc_ctl.urb[i];
  if (urb) {
   if (!irqs_disabled())
    usb_kill_urb(urb);
   else
    usb_unlink_urb(urb);

   if (dev->isoc_ctl.transfer_buffer[i]) {
    usb_buffer_free(dev->udev,
     urb->transfer_buffer_length,
     dev->isoc_ctl.transfer_buffer[i],
     urb->transfer_dma);
   }
   usb_free_urb(urb);
   dev->isoc_ctl.urb[i] = ((void*)0);
  }
  dev->isoc_ctl.transfer_buffer[i] = ((void*)0);
 }

 kfree(dev->isoc_ctl.urb);
 kfree(dev->isoc_ctl.transfer_buffer);

 dev->isoc_ctl.urb = ((void*)0);
 dev->isoc_ctl.transfer_buffer = ((void*)0);
 dev->isoc_ctl.num_bufs = 0;

 em28xx_capture_start(dev, 0);
}
