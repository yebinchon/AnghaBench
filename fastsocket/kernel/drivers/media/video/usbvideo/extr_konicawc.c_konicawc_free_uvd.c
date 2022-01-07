
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uvd {scalar_t__ user_data; } ;
struct konicawc {int ** sts_urb; } ;


 int USBVIDEO_NUMSBUF ;
 int konicawc_unregister_input (struct konicawc*) ;
 int usb_free_urb (int *) ;

__attribute__((used)) static void konicawc_free_uvd(struct uvd *uvd)
{
 int i;
 struct konicawc *cam = (struct konicawc *)uvd->user_data;

 konicawc_unregister_input(cam);

 for (i = 0; i < USBVIDEO_NUMSBUF; i++) {
  usb_free_urb(cam->sts_urb[i]);
  cam->sts_urb[i] = ((void*)0);
 }
}
