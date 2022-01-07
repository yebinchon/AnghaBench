
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uvd {long paletteBits; } ;
struct usbvideo_frame {int dummy; } ;


 int RGB24_PUTPIXEL (struct usbvideo_frame*,int,int,int,int,int) ;
 long VIDEO_PALETTE_RGB24 ;

__attribute__((used)) static void usbvideo_OverlayChar(struct uvd *uvd, struct usbvideo_frame *frame,
     int x, int y, int ch)
{
 static const unsigned short digits[16] = {
  0xF6DE,
  0x2492,
  0xE7CE,
  0xE79E,
  0xB792,
  0xF39E,
  0xF3DE,
  0xF492,
  0xF7DE,
  0xF79E,
  0x77DA,
  0xD75C,
  0xF24E,
  0xD6DC,
  0xF34E,
  0xF348
 };
 unsigned short digit;
 int ix, iy;

 if ((uvd == ((void*)0)) || (frame == ((void*)0)))
  return;

 if (ch >= '0' && ch <= '9')
  ch -= '0';
 else if (ch >= 'A' && ch <= 'F')
  ch = 10 + (ch - 'A');
 else if (ch >= 'a' && ch <= 'f')
  ch = 10 + (ch - 'a');
 else
  return;
 digit = digits[ch];

 for (iy=0; iy < 5; iy++) {
  for (ix=0; ix < 3; ix++) {
   if (digit & 0x8000) {
    if (uvd->paletteBits & (1L << VIDEO_PALETTE_RGB24)) {
              RGB24_PUTPIXEL(frame, x+ix, y+iy, 0xFF, 0xFF, 0xFF);
    }
   }
   digit = digit << 1;
  }
 }
}
