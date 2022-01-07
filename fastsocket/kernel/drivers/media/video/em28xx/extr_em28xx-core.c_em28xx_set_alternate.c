
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct em28xx {int alt; int width; int num_alt; int height; unsigned int* alt_max_pkt_size; unsigned int max_pkt_size; int udev; } ;


 int alt ;
 int em28xx_coredbg (char*,unsigned int,...) ;
 int em28xx_errdev (char*,unsigned int,int) ;
 int usb_set_interface (int ,int ,unsigned int) ;

int em28xx_set_alternate(struct em28xx *dev)
{
 int errCode, prev_alt = dev->alt;
 int i;
 unsigned int min_pkt_size = dev->width * 2 + 4;





 if (alt && alt < dev->num_alt) {
  em28xx_coredbg("alternate forced to %d\n", dev->alt);
  dev->alt = alt;
  goto set_alt;
 }





 if (dev->width * 2 * dev->height > 720 * 240 * 2)
  min_pkt_size *= 2;

 for (i = 0; i < dev->num_alt; i++) {

  if (dev->alt_max_pkt_size[i] >= min_pkt_size) {
   dev->alt = i;
   break;



  } else if (dev->alt_max_pkt_size[i] >
      dev->alt_max_pkt_size[dev->alt])
   dev->alt = i;
 }

set_alt:
 if (dev->alt != prev_alt) {
  em28xx_coredbg("minimum isoc packet size: %u (alt=%d)\n",
    min_pkt_size, dev->alt);
  dev->max_pkt_size = dev->alt_max_pkt_size[dev->alt];
  em28xx_coredbg("setting alternate %d with wMaxPacketSize=%u\n",
          dev->alt, dev->max_pkt_size);
  errCode = usb_set_interface(dev->udev, 0, dev->alt);
  if (errCode < 0) {
   em28xx_errdev("cannot change alternate number to %d (error=%i)\n",
     dev->alt, errCode);
   return errCode;
  }
 }
 return 0;
}
