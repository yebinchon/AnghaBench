
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uvd {int dummy; } ;
struct usbvideo_frame {int dummy; } ;


 int usbvideo_OverlayChar (struct uvd*,struct usbvideo_frame*,int,int,char const) ;

__attribute__((used)) static void usbvideo_OverlayString(struct uvd *uvd, struct usbvideo_frame *frame,
       int x, int y, const char *str)
{
 while (*str) {
  usbvideo_OverlayChar(uvd, frame, x, y, *str);
  str++;
  x += 4;
 }
}
