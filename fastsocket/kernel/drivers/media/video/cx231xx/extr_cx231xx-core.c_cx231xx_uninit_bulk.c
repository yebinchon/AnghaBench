
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct urb {int transfer_dma; int transfer_buffer_length; } ;
struct TYPE_5__ {int nfields; int num_bufs; struct urb** transfer_buffer; struct urb** urb; } ;
struct TYPE_4__ {int * transfer_buffer; } ;
struct TYPE_6__ {TYPE_2__ bulk_ctl; TYPE_1__ isoc_ctl; } ;
struct cx231xx {scalar_t__ mode_tv; TYPE_3__ video_mode; int udev; } ;


 int Raw_Video ;
 int TS1_serial_mode ;
 int cx231xx_capture_start (struct cx231xx*,int ,int ) ;
 int cx231xx_isocdbg (char*) ;
 int irqs_disabled () ;
 int kfree (struct urb**) ;
 int usb_buffer_free (int ,int ,int ,int ) ;
 int usb_free_urb (struct urb*) ;
 int usb_kill_urb (struct urb*) ;
 int usb_unlink_urb (struct urb*) ;

void cx231xx_uninit_bulk(struct cx231xx *dev)
{
 struct urb *urb;
 int i;

 cx231xx_isocdbg("cx231xx: called cx231xx_uninit_bulk\n");

 dev->video_mode.bulk_ctl.nfields = -1;
 for (i = 0; i < dev->video_mode.bulk_ctl.num_bufs; i++) {
  urb = dev->video_mode.bulk_ctl.urb[i];
  if (urb) {
   if (!irqs_disabled())
    usb_kill_urb(urb);
   else
    usb_unlink_urb(urb);

   if (dev->video_mode.bulk_ctl.transfer_buffer[i]) {
    usb_buffer_free(dev->udev,
      urb->transfer_buffer_length,
      dev->video_mode.isoc_ctl.
      transfer_buffer[i],
      urb->transfer_dma);
   }
   usb_free_urb(urb);
   dev->video_mode.bulk_ctl.urb[i] = ((void*)0);
  }
  dev->video_mode.bulk_ctl.transfer_buffer[i] = ((void*)0);
 }

 kfree(dev->video_mode.bulk_ctl.urb);
 kfree(dev->video_mode.bulk_ctl.transfer_buffer);

 dev->video_mode.bulk_ctl.urb = ((void*)0);
 dev->video_mode.bulk_ctl.transfer_buffer = ((void*)0);
 dev->video_mode.bulk_ctl.num_bufs = 0;

 if (dev->mode_tv == 0)
  cx231xx_capture_start(dev, 0, Raw_Video);
 else
  cx231xx_capture_start(dev, 0, TS1_serial_mode);


}
