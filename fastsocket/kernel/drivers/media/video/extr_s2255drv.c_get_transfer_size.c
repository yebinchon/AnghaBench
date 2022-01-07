
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct s2255_mode {scalar_t__ format; int scale; int color; } ;


 int COLOR_Y8 ;
 int DEF_USB_BLOCK ;
 scalar_t__ FORMAT_NTSC ;
 scalar_t__ FORMAT_PAL ;
 int LINE_SZ_1CIFS_NTSC ;
 int LINE_SZ_1CIFS_PAL ;
 int LINE_SZ_2CIFS_NTSC ;
 int LINE_SZ_2CIFS_PAL ;
 int LINE_SZ_4CIFS_NTSC ;
 int LINE_SZ_4CIFS_PAL ;
 int LINE_SZ_DEF ;
 int MASK_COLOR ;
 int NUM_LINES_1CIFS_NTSC ;
 int NUM_LINES_1CIFS_PAL ;
 int NUM_LINES_2CIFS_NTSC ;
 int NUM_LINES_2CIFS_PAL ;
 int NUM_LINES_4CIFS_NTSC ;
 int NUM_LINES_4CIFS_PAL ;
 int NUM_LINES_DEF ;
 int PREFIX_SIZE ;





__attribute__((used)) static u32 get_transfer_size(struct s2255_mode *mode)
{
 int linesPerFrame = LINE_SZ_DEF;
 int pixelsPerLine = NUM_LINES_DEF;
 u32 outImageSize;
 u32 usbInSize;
 unsigned int mask_mult;

 if (mode == ((void*)0))
  return 0;

 if (mode->format == FORMAT_NTSC) {
  switch (mode->scale) {
  case 129:
  case 128:
   linesPerFrame = NUM_LINES_4CIFS_NTSC * 2;
   pixelsPerLine = LINE_SZ_4CIFS_NTSC;
   break;
  case 130:
   linesPerFrame = NUM_LINES_2CIFS_NTSC;
   pixelsPerLine = LINE_SZ_2CIFS_NTSC;
   break;
  case 131:
   linesPerFrame = NUM_LINES_1CIFS_NTSC;
   pixelsPerLine = LINE_SZ_1CIFS_NTSC;
   break;
  default:
   break;
  }
 } else if (mode->format == FORMAT_PAL) {
  switch (mode->scale) {
  case 129:
  case 128:
   linesPerFrame = NUM_LINES_4CIFS_PAL * 2;
   pixelsPerLine = LINE_SZ_4CIFS_PAL;
   break;
  case 130:
   linesPerFrame = NUM_LINES_2CIFS_PAL;
   pixelsPerLine = LINE_SZ_2CIFS_PAL;
   break;
  case 131:
   linesPerFrame = NUM_LINES_1CIFS_PAL;
   pixelsPerLine = LINE_SZ_1CIFS_PAL;
   break;
  default:
   break;
  }
 }
 outImageSize = linesPerFrame * pixelsPerLine;
 if ((mode->color & MASK_COLOR) != COLOR_Y8) {

  outImageSize *= 2;
 }



 usbInSize = outImageSize + PREFIX_SIZE;
 mask_mult = 0xffffffffUL - DEF_USB_BLOCK + 1;

 if (usbInSize & ~mask_mult)
  usbInSize = (usbInSize & mask_mult) + (DEF_USB_BLOCK);
 return usbInSize;
}
