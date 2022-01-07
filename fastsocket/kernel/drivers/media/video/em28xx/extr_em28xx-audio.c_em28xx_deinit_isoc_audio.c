
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ** transfer_buffer; int ** urb; } ;
struct em28xx {TYPE_1__ adev; } ;


 int EM28XX_AUDIO_BUFS ;
 int dprintk (char*) ;
 int irqs_disabled () ;
 int kfree (int *) ;
 int usb_free_urb (int *) ;
 int usb_kill_urb (int *) ;
 int usb_unlink_urb (int *) ;

__attribute__((used)) static int em28xx_deinit_isoc_audio(struct em28xx *dev)
{
 int i;

 dprintk("Stopping isoc\n");
 for (i = 0; i < EM28XX_AUDIO_BUFS; i++) {
  if (!irqs_disabled())
   usb_kill_urb(dev->adev.urb[i]);
  else
   usb_unlink_urb(dev->adev.urb[i]);

  usb_free_urb(dev->adev.urb[i]);
  dev->adev.urb[i] = ((void*)0);

  kfree(dev->adev.transfer_buffer[i]);
  dev->adev.transfer_buffer[i] = ((void*)0);
 }

 return 0;
}
