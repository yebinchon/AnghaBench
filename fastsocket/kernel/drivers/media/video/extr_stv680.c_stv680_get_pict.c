
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_picture {int depth; int palette; int hue; int contrast; int colour; int whiteness; int brightness; } ;
struct usb_stv {int depth; int palette; int hue; int contrast; int colour; int whiteness; int brightness; } ;



__attribute__((used)) static int stv680_get_pict (struct usb_stv *stv680, struct video_picture *p)
{


 p->brightness = stv680->brightness;
 p->whiteness = stv680->whiteness;
 p->colour = stv680->colour;
 p->contrast = stv680->contrast;
 p->hue = stv680->hue;
 p->palette = stv680->palette;
 p->depth = stv680->depth;
 return 0;
}
