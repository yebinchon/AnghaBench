
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_ov511 {TYPE_1__* frame; int maxheight; int maxwidth; } ;
struct TYPE_2__ {scalar_t__ format; int depth; scalar_t__ bytes_read; int height; int width; } ;


 int EINVAL ;
 int OV511_NUMFRAMES ;
 int PDEBUG (int,char*,int ,int ,int ) ;
 scalar_t__ VIDEO_PALETTE_YUV420 ;
 scalar_t__ force_palette ;
 int get_depth (scalar_t__) ;
 scalar_t__ mode_init_regs (struct usb_ov511*,int ,int ,scalar_t__,int ) ;
 int symbolic (int ,scalar_t__) ;
 int v4l1_plist ;

__attribute__((used)) static int
ov51x_set_default_params(struct usb_ov511 *ov)
{
 int i;



 for (i = 0; i < OV511_NUMFRAMES; i++) {
  ov->frame[i].width = ov->maxwidth;
  ov->frame[i].height = ov->maxheight;
  ov->frame[i].bytes_read = 0;
  if (force_palette)
   ov->frame[i].format = force_palette;
  else
   ov->frame[i].format = VIDEO_PALETTE_YUV420;

  ov->frame[i].depth = get_depth(ov->frame[i].format);
 }

 PDEBUG(3, "%dx%d, %s", ov->maxwidth, ov->maxheight,
        symbolic(v4l1_plist, ov->frame[0].format));


 if (mode_init_regs(ov, ov->maxwidth, ov->maxheight,
      ov->frame[0].format, 0) < 0)
  return -EINVAL;

 return 0;
}
