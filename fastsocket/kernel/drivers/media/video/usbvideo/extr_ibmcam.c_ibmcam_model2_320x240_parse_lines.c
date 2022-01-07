
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int colour; } ;
struct uvd {int videosize; int dp; TYPE_1__ vpic; } ;
struct usbvideo_frame {int request; int curline; unsigned char* data; int deinterlace; } ;
typedef int lineBuffer ;
typedef enum ParseState { ____Placeholder_ParseState } ParseState ;
struct TYPE_4__ {int has_hdr; } ;


 int Deinterlace_FillOddLines ;
 int FLAGS_DISPLAY_HINTS ;
 int FLAGS_MONOCHROME ;
 TYPE_2__* IBMCAM_T (struct uvd*) ;
 int RESTRICT_TO_RANGE (int,int ,int) ;
 int RGB24_PUTPIXEL (struct usbvideo_frame*,int,int,int,int,int) ;
 int RingQueue_Dequeue (int *,unsigned char*,unsigned int) ;
 unsigned int RingQueue_GetLength (int *) ;
 int V4L_BYTES_PER_PIXEL ;



 int VIDEOSIZE_X (int) ;
 int VIDEOSIZE_Y (int) ;
 int assert (int) ;
 int err (char*) ;
 int flags ;
 int memset (unsigned char*,int ,int) ;
 int scan_Continue ;
 int scan_NextFrame ;
 int scan_Out ;

__attribute__((used)) static enum ParseState ibmcam_model2_320x240_parse_lines(
 struct uvd *uvd,
 struct usbvideo_frame *frame,
 long *pcopylen)
{
 unsigned char *f, *la, *lb;
 unsigned int len;
 int v4l_linesize;
 int i, j, frame_done=0, color_corr;
 int scanLength, scanHeight;
 static unsigned char lineBuffer[352*2];

 switch (uvd->videosize) {
 case 130:
 case 129:
 case 128:
  scanLength = VIDEOSIZE_X(uvd->videosize);
  scanHeight = VIDEOSIZE_Y(uvd->videosize);
  break;
 default:
  err("ibmcam_model2_320x240_parse_lines: Wrong mode.");
  return scan_Out;
 }

 color_corr = (uvd->vpic.colour) >> 8;
 v4l_linesize = VIDEOSIZE_X(frame->request) * V4L_BYTES_PER_PIXEL;

 len = scanLength * 2;
 assert(len <= sizeof(lineBuffer));


 if (RingQueue_GetLength(&uvd->dp) < len)
  return scan_Out;


 RingQueue_Dequeue(&uvd->dp, lineBuffer, len);







 if ((frame->curline + 2) >= VIDEOSIZE_Y(frame->request))
  return scan_NextFrame;

 la = lineBuffer;
 lb = lineBuffer + scanLength;
 f = frame->data + (v4l_linesize * frame->curline);


 for (i = 0; i < VIDEOSIZE_X(frame->request); i++) {
  int y, rv, gv, bv;

  j = i & (~1);


  if ((flags & FLAGS_DISPLAY_HINTS) && (IBMCAM_T(uvd)->has_hdr)) {
   if (IBMCAM_T(uvd)->has_hdr == 1) {
    bv = 0;
    gv = 0xFF;
    rv = 0xFF;
   } else {
    bv = 0xFF;
    gv = 0xFF;
    rv = 0;
   }
   IBMCAM_T(uvd)->has_hdr = 0;
   goto make_pixel;
  }







  if (((frame->curline + 2) >= scanHeight) || (i >= scanLength)) {
   const int offset = i * V4L_BYTES_PER_PIXEL;




   memset(f, 0, v4l_linesize - offset);
   break;
  }
  rv = la[i];
  gv = lb[j + 1];
  bv = lb[j + 0];

  y = (rv + gv + bv) / 3;

  if (flags & FLAGS_MONOCHROME)
   rv = gv = bv = y;
  else if (color_corr != 128) {


   rv -= y;
   gv -= y;
   bv -= y;


   rv = (rv * color_corr) / 128;
   gv = (gv * color_corr) / 128;
   bv = (bv * color_corr) / 128;


   rv += y;
   gv += y;
   bv += y;


   RESTRICT_TO_RANGE(rv, 0, 255);
   RESTRICT_TO_RANGE(gv, 0, 255);
   RESTRICT_TO_RANGE(bv, 0, 255);
  }

 make_pixel:
  RGB24_PUTPIXEL(frame, i, frame->curline, rv, gv, bv);
 }






 frame->curline += 2;
 *pcopylen += v4l_linesize * 2;
 frame->deinterlace = Deinterlace_FillOddLines;

 if (frame_done || (frame->curline >= VIDEOSIZE_Y(frame->request)))
  return scan_NextFrame;
 else
  return scan_Continue;
}
