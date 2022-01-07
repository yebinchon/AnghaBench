
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_8__ {int alt; int* alt_max_pkt_size; int max_pkt_size; } ;
struct TYPE_7__ {TYPE_2__* hs_config_info; } ;
struct cx231xx {int width; int height; scalar_t__ USE_ISO; TYPE_4__ video_mode; int udev; TYPE_3__ current_pcb_config; } ;
struct TYPE_5__ {scalar_t__ video_index; } ;
struct TYPE_6__ {TYPE_1__ interface_info; } ;


 int cx231xx_coredbg (char*,unsigned int,...) ;
 int cx231xx_errdev (char*,unsigned int,int) ;
 int usb_set_interface (int ,scalar_t__,unsigned int) ;

int cx231xx_set_video_alternate(struct cx231xx *dev)
{
 int errCode, prev_alt = dev->video_mode.alt;
 unsigned int min_pkt_size = dev->width * 2 + 4;
 u32 usb_interface_index = 0;





 if (dev->width * 2 * dev->height > 720 * 240 * 2)
  min_pkt_size *= 2;

 if (dev->width > 360) {

  dev->video_mode.alt = 3;
 } else if (dev->width > 180) {

  dev->video_mode.alt = 2;
 } else if (dev->width > 0) {

  dev->video_mode.alt = 1;
 } else {

  dev->video_mode.alt = 0;
 }

 if (dev->USE_ISO == 0)
  dev->video_mode.alt = 0;

 cx231xx_coredbg("dev->video_mode.alt= %d\n", dev->video_mode.alt);


 usb_interface_index =
     dev->current_pcb_config.hs_config_info[0].interface_info.
     video_index + 1;

 if (dev->video_mode.alt != prev_alt) {
  cx231xx_coredbg("minimum isoc packet size: %u (alt=%d)\n",
    min_pkt_size, dev->video_mode.alt);

  if (dev->video_mode.alt_max_pkt_size != ((void*)0))
   dev->video_mode.max_pkt_size =
   dev->video_mode.alt_max_pkt_size[dev->video_mode.alt];
  cx231xx_coredbg("setting alternate %d with wMaxPacketSize=%u\n",
    dev->video_mode.alt,
    dev->video_mode.max_pkt_size);
  errCode =
      usb_set_interface(dev->udev, usb_interface_index,
          dev->video_mode.alt);
  if (errCode < 0) {
   cx231xx_errdev
       ("cannot change alt number to %d (error=%i)\n",
        dev->video_mode.alt, errCode);
   return errCode;
  }
 }
 return 0;
}
