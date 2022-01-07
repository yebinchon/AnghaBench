
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ov511_frame {int rawheight; int const rawwidth; int width; int height; } ;


 int PDEBUG (int,char*,int const) ;
 int RAWFMT_YUV420 ;
 int err (char*) ;

__attribute__((used)) static void
deinterlace(struct ov511_frame *frame, int rawformat,
     unsigned char *pIn0, unsigned char *pOut0)
{
 const int fieldheight = frame->rawheight / 2;
 const int fieldpix = fieldheight * frame->rawwidth;
 const int w = frame->width;
 int x, y;
 unsigned char *pInEven, *pInOdd, *pOut;

 PDEBUG(5, "fieldheight=%d", fieldheight);

 if (frame->rawheight != frame->height) {
  err("invalid height");
  return;
 }

 if ((frame->rawwidth * 2) != frame->width) {
  err("invalid width");
  return;
 }


 pInOdd = pIn0;
 pInEven = pInOdd + fieldpix;
 pOut = pOut0;
 for (y = 0; y < fieldheight; y++) {
  for (x = 0; x < frame->rawwidth; x++) {
   *pOut = *pInEven;
   *(pOut+1) = *pInEven++;
   *(pOut+w) = *pInOdd;
   *(pOut+w+1) = *pInOdd++;
   pOut += 2;
  }
  pOut += w;
 }

 if (rawformat == RAWFMT_YUV420) {

  pInOdd = pIn0 + fieldpix * 2;
  pInEven = pInOdd + fieldpix / 4;
  for (y = 0; y < fieldheight / 2; y++) {
   for (x = 0; x < frame->rawwidth / 2; x++) {
    *pOut = *pInEven;
    *(pOut+1) = *pInEven++;
    *(pOut+w/2) = *pInOdd;
    *(pOut+w/2+1) = *pInOdd++;
    pOut += 2;
   }
   pOut += w/2;
  }

  pInOdd = pIn0 + fieldpix * 2 + fieldpix / 2;
  pInEven = pInOdd + fieldpix / 4;
  for (y = 0; y < fieldheight / 2; y++) {
   for (x = 0; x < frame->rawwidth / 2; x++) {
    *pOut = *pInEven;
    *(pOut+1) = *pInEven++;
    *(pOut+w/2) = *pInOdd;
    *(pOut+w/2+1) = *pInOdd++;
    pOut += 2;
   }
   pOut += w/2;
  }
 }
}
