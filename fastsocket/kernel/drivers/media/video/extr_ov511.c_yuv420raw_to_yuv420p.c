
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ov511_frame {unsigned int rawwidth; unsigned int rawheight; } ;


 int make_8x8 (unsigned char*,unsigned char*,unsigned int const) ;

__attribute__((used)) static void
yuv420raw_to_yuv420p(struct ov511_frame *frame,
       unsigned char *pIn0, unsigned char *pOut0)
{
 int k, x, y;
 unsigned char *pIn, *pOut, *pOutLine;
 const unsigned int a = frame->rawwidth * frame->rawheight;
 const unsigned int w = frame->rawwidth / 2;


 pIn = pIn0;
 pOutLine = pOut0 + a;
 for (y = 0; y < frame->rawheight - 1; y += 16) {
  pOut = pOutLine;
  for (x = 0; x < frame->rawwidth - 1; x += 16) {
   make_8x8(pIn, pOut, w);
   make_8x8(pIn + 64, pOut + a/4, w);
   pIn += 384;
   pOut += 8;
  }
  pOutLine += 8 * w;
 }


 pIn = pIn0 + 128;
 pOutLine = pOut0;
 k = 0;
 for (y = 0; y < frame->rawheight - 1; y += 8) {
  pOut = pOutLine;
  for (x = 0; x < frame->rawwidth - 1; x += 8) {
   make_8x8(pIn, pOut, frame->rawwidth);
   pIn += 64;
   pOut += 8;
   if ((++k) > 3) {
    k = 0;
    pIn += 128;
   }
  }
  pOutLine += 8 * frame->rawwidth;
 }
}
