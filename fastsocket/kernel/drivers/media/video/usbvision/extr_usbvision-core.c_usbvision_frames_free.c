
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_usbvision {scalar_t__ num_frames; int * fbuf; int fbuf_size; } ;


 int DBG_FUNC ;
 int PDEBUG (int ,char*,scalar_t__) ;
 int usbvision_rvfree (int *,int ) ;

void usbvision_frames_free(struct usb_usbvision *usbvision)
{

 PDEBUG(DBG_FUNC, "free %d frames", usbvision->num_frames);

 if (usbvision->fbuf != ((void*)0)) {
  usbvision_rvfree(usbvision->fbuf, usbvision->fbuf_size);
  usbvision->fbuf = ((void*)0);

  usbvision->num_frames = 0;
 }
}
