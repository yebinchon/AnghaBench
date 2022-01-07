
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct urb {int interval; int number_of_packets; int transfer_buffer_length; TYPE_1__* iso_frame_desc; int complete; int transfer_buffer; int transfer_flags; int pipe; struct em28xx* context; int dev; } ;
struct TYPE_4__ {struct urb** urb; int * transfer_buffer; } ;
struct em28xx {TYPE_2__ adev; int udev; } ;
struct TYPE_3__ {int offset; int length; } ;


 int EM28XX_AUDIO_BUFS ;
 int EM28XX_AUDIO_MAX_PACKET_SIZE ;
 int EM28XX_NUM_AUDIO_PACKETS ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int URB_ISO_ASAP ;
 int dprintk (char*) ;
 int em28xx_audio_isocirq ;
 int em28xx_deinit_isoc_audio (struct em28xx*) ;
 int em28xx_errdev (char*) ;
 int kfree (int ) ;
 int kmalloc (int const,int ) ;
 int memset (int ,int,int const) ;
 struct urb* usb_alloc_urb (int,int ) ;
 int usb_free_urb (struct urb*) ;
 int usb_rcvisocpipe (int ,int) ;
 int usb_submit_urb (struct urb*,int ) ;

__attribute__((used)) static int em28xx_init_audio_isoc(struct em28xx *dev)
{
 int i, errCode;
 const int sb_size = EM28XX_NUM_AUDIO_PACKETS *
       EM28XX_AUDIO_MAX_PACKET_SIZE;

 dprintk("Starting isoc transfers\n");

 for (i = 0; i < EM28XX_AUDIO_BUFS; i++) {
  struct urb *urb;
  int j, k;

  dev->adev.transfer_buffer[i] = kmalloc(sb_size, GFP_ATOMIC);
  if (!dev->adev.transfer_buffer[i])
   return -ENOMEM;

  memset(dev->adev.transfer_buffer[i], 0x80, sb_size);
  urb = usb_alloc_urb(EM28XX_NUM_AUDIO_PACKETS, GFP_ATOMIC);
  if (!urb) {
   em28xx_errdev("usb_alloc_urb failed!\n");
   for (j = 0; j < i; j++) {
    usb_free_urb(dev->adev.urb[j]);
    kfree(dev->adev.transfer_buffer[j]);
   }
   return -ENOMEM;
  }

  urb->dev = dev->udev;
  urb->context = dev;
  urb->pipe = usb_rcvisocpipe(dev->udev, 0x83);
  urb->transfer_flags = URB_ISO_ASAP;
  urb->transfer_buffer = dev->adev.transfer_buffer[i];
  urb->interval = 1;
  urb->complete = em28xx_audio_isocirq;
  urb->number_of_packets = EM28XX_NUM_AUDIO_PACKETS;
  urb->transfer_buffer_length = sb_size;

  for (j = k = 0; j < EM28XX_NUM_AUDIO_PACKETS;
        j++, k += EM28XX_AUDIO_MAX_PACKET_SIZE) {
   urb->iso_frame_desc[j].offset = k;
   urb->iso_frame_desc[j].length =
       EM28XX_AUDIO_MAX_PACKET_SIZE;
  }
  dev->adev.urb[i] = urb;
 }

 for (i = 0; i < EM28XX_AUDIO_BUFS; i++) {
  errCode = usb_submit_urb(dev->adev.urb[i], GFP_ATOMIC);
  if (errCode) {
   em28xx_deinit_isoc_audio(dev);
   return errCode;
  }
 }

 return 0;
}
