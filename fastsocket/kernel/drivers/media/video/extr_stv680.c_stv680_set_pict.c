
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_picture {scalar_t__ palette; scalar_t__ brightness; int depth; int hue; int contrast; int colour; int whiteness; } ;
struct usb_stv {scalar_t__ brightness; int chgbright; scalar_t__ palette; int depth; int hue; int contrast; int colour; int whiteness; } ;


 int PDEBUG (int,char*) ;
 scalar_t__ STV_VIDEO_PALETTE ;

__attribute__((used)) static int stv680_set_pict (struct usb_stv *stv680, struct video_picture *p)
{


 if (p->palette != STV_VIDEO_PALETTE) {
  PDEBUG (2, "STV(e): Palette set error in _set_pic");
  return 1;
 }

 if (stv680->brightness != p->brightness) {
  stv680->chgbright = 1;
  stv680->brightness = p->brightness;
 }

 stv680->whiteness = p->whiteness;
 stv680->colour = p->colour;
 stv680->contrast = p->contrast;
 stv680->hue = p->hue;
 stv680->palette = p->palette;
 stv680->depth = p->depth;

 return 0;
}
