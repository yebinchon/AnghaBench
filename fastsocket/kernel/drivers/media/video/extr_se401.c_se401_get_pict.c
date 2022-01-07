
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_picture {int whiteness; int colour; int contrast; int hue; int depth; int palette; int brightness; } ;
struct usb_se401 {int rgain; int palette; scalar_t__ enhance; int brightness; } ;



__attribute__((used)) static int se401_get_pict(struct usb_se401 *se401, struct video_picture *p)
{
 p->brightness = se401->brightness;
 if (se401->enhance)
  p->whiteness = 32768;
 else
  p->whiteness = 0;

 p->colour = 65535;
 p->contrast = 65535;
 p->hue = se401->rgain << 10;
 p->palette = se401->palette;
 p->depth = 3;
 return 0;
}
