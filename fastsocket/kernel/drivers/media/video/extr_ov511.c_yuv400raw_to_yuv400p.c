
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ov511_frame {int rawheight; int rawwidth; } ;


 int make_8x8 (unsigned char*,unsigned char*,int) ;

__attribute__((used)) static void
yuv400raw_to_yuv400p(struct ov511_frame *frame,
       unsigned char *pIn0, unsigned char *pOut0)
{
 int x, y;
 unsigned char *pIn, *pOut, *pOutLine;


 pIn = pIn0;
 pOutLine = pOut0;
 for (y = 0; y < frame->rawheight - 1; y += 8) {
  pOut = pOutLine;
  for (x = 0; x < frame->rawwidth - 1; x += 8) {
   make_8x8(pIn, pOut, frame->rawwidth);
   pIn += 64;
   pOut += 8;
  }
  pOutLine += 8 * frame->rawwidth;
 }
}
