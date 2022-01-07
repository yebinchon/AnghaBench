
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int hue; int colour; } ;
struct uvd {int videosize; int dp; TYPE_1__ vpic; } ;
struct usbvideo_frame {int request; int header; int curline; unsigned char* data; int deinterlace; } ;
typedef int lineBuffer ;
struct TYPE_5__ {scalar_t__ camera_model; int has_hdr; } ;
typedef TYPE_2__ ibmcam_t ;
typedef enum ParseState { ____Placeholder_ParseState } ParseState ;


 int Deinterlace_FillOddLines ;
 int FLAGS_DISPLAY_HINTS ;
 int FLAGS_MONOCHROME ;



 scalar_t__ IBMCAM_MODEL_2 ;
 scalar_t__ IBMCAM_MODEL_4 ;
 TYPE_2__* IBMCAM_T (struct uvd*) ;
 int RESTRICT_TO_RANGE (int,int const,int const) ;
 int RGB24_PUTPIXEL (struct usbvideo_frame*,int,int,unsigned char,unsigned char,unsigned char) ;
 int RingQueue_Dequeue (int *,unsigned char*,unsigned int) ;
 unsigned int RingQueue_GetLength (int *) ;
 int V4L_BYTES_PER_PIXEL ;



 int VIDEOSIZE_X (int) ;
 int VIDEOSIZE_Y (int) ;
 int YUV_TO_RGB_BY_THE_BOOK (int,int,int,unsigned char,unsigned char,unsigned char) ;
 int assert (int) ;
 int err (char*,...) ;
 int flags ;
 int hue_correction ;
 int memset (unsigned char*,int ,int) ;
 int scan_Continue ;
 int scan_NextFrame ;
 int scan_Out ;

__attribute__((used)) static enum ParseState ibmcam_parse_lines(
 struct uvd *uvd,
 struct usbvideo_frame *frame,
 long *pcopylen)
{
 unsigned char *f;
 ibmcam_t *icam;
 unsigned int len, scanLength, scanHeight, order_uv, order_yc;
 int v4l_linesize;
 const int hue_corr = (uvd->vpic.hue - 0x8000) >> 10;
 const int hue2_corr = (hue_correction - 128) / 4;
 const int ccm = 128;
 int y, u, v, i, frame_done=0, color_corr;
 static unsigned char lineBuffer[640*3];
 unsigned const char *chromaLine, *lumaLine;

 assert(uvd != ((void*)0));
 assert(frame != ((void*)0));
 icam = IBMCAM_T(uvd);
 assert(icam != ((void*)0));
 color_corr = (uvd->vpic.colour - 0x8000) >> 8;
 RESTRICT_TO_RANGE(color_corr, -ccm, ccm+1);

 v4l_linesize = VIDEOSIZE_X(frame->request) * V4L_BYTES_PER_PIXEL;

 if (IBMCAM_T(uvd)->camera_model == IBMCAM_MODEL_4) {

  switch (uvd->videosize) {
  case 130:
  case 129:
  case 128:
   scanLength = VIDEOSIZE_X(uvd->videosize);
   scanHeight = VIDEOSIZE_Y(uvd->videosize);
   break;
  default:
   err("ibmcam_parse_lines: Wrong mode.");
   return scan_Out;
  }
  order_yc = 1;
  order_uv = 1;
 } else {
  switch (frame->header) {
  case 133:
   scanLength = 128;
   scanHeight = 96;
   order_uv = 1;
   break;
  case 132:
   scanLength = 176;
   scanHeight = 144;
   order_uv = 1;
   break;
  case 131:
   scanLength = 352;
   scanHeight = 288;
   order_uv = 0;
   break;
  default:
   err("Unknown header signature 00 FF 00 %02lX", frame->header);
   return scan_NextFrame;
  }

  order_yc = (IBMCAM_T(uvd)->camera_model == IBMCAM_MODEL_2);
 }

 len = scanLength * 3;
 assert(len <= sizeof(lineBuffer));
 if (RingQueue_GetLength(&uvd->dp) < len)
  return scan_Out;


 RingQueue_Dequeue(&uvd->dp, lineBuffer, len);







 if ((frame->curline + 2) >= VIDEOSIZE_Y(frame->request))
  return scan_NextFrame;
 assert(frame->data != ((void*)0));
 f = frame->data + (v4l_linesize * frame->curline);
 lumaLine = lineBuffer;
 chromaLine = lineBuffer + scanLength;
 for (i = 0; i < VIDEOSIZE_X(frame->request); i++)
 {
  unsigned char rv, gv, bv;


  if ((flags & FLAGS_DISPLAY_HINTS) && (icam->has_hdr)) {







   if (icam->has_hdr == 1) {
    bv = 0;
    gv = 0xFF;
    rv = 0xFF;
   } else {
    bv = 0xFF;
    gv = 0xFF;
    rv = 0;
   }
   icam->has_hdr = 0;
   goto make_pixel;
  }







  if (((frame->curline + 2) >= scanHeight) || (i >= scanLength)) {
   const int j = i * V4L_BYTES_PER_PIXEL;




   memset(f, 0, v4l_linesize - j);
   break;
  }

  y = lumaLine[i];
  if (flags & FLAGS_MONOCHROME)
   rv = gv = bv = y;
  else {
   int off_0, off_2;

   off_0 = (i >> 1) << 2;
   off_2 = off_0 + 2;

   if (order_yc) {
    off_0++;
    off_2++;
   }
   if (!order_uv) {
    off_0 += 2;
    off_2 -= 2;
   }
   u = chromaLine[off_0] + hue_corr;
   v = chromaLine[off_2] + hue2_corr;


   if (color_corr != 0) {

    u = 128 + ((ccm + color_corr) * (u - 128)) / ccm;
    v = 128 + ((ccm + color_corr) * (v - 128)) / ccm;
   }
   YUV_TO_RGB_BY_THE_BOOK(y, u, v, rv, gv, bv);
  }

 make_pixel:
  *f++ = bv;
  *f++ = gv;
  *f++ = rv;
  if (frame_done)
   break;
 }






 frame->curline += 2;
 if (pcopylen != ((void*)0))
  *pcopylen += 2 * v4l_linesize;
 frame->deinterlace = Deinterlace_FillOddLines;

 if (frame_done || (frame->curline >= VIDEOSIZE_Y(frame->request)))
  return scan_NextFrame;
 else
  return scan_Continue;
}
