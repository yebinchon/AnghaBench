
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hue; int colour; } ;
struct uvd {int debug; TYPE_2__* dev; int dp; TYPE_1__ vpic; } ;
struct usbvideo_frame {int header; int curline; int request; int deinterlace; } ;
typedef int lineBuffer ;
typedef enum ParseState { ____Placeholder_ParseState } ParseState ;
struct TYPE_4__ {int dev; } ;


 int Deinterlace_None ;
 int RESTRICT_TO_RANGE (int,int const,int const) ;
 int RGB24_PUTPIXEL (struct usbvideo_frame*,int,int,int,int,int) ;
 int RingQueue_Dequeue (int *,unsigned char*,unsigned int) ;
 unsigned int RingQueue_GetLength (int *) ;
 int V4L_BYTES_PER_PIXEL ;
 int VIDEOSIZE_X (int ) ;
 int VIDEOSIZE_Y (int ) ;
 int YUV_TO_RGB_BY_THE_BOOK (int,int,int,int,int,int) ;
 int assert (int) ;
 int dev_info (int *,char*,int) ;
 int err (char*,int) ;
 int hue_correction ;
 int scan_Continue ;
 int scan_NextFrame ;
 int scan_Out ;

__attribute__((used)) static enum ParseState ibmcam_model3_parse_lines(
 struct uvd *uvd,
 struct usbvideo_frame *frame,
 long *pcopylen)
{
 unsigned char *data;
 const unsigned char *color;
 unsigned int len;
 int v4l_linesize;
 const int hue_corr = (uvd->vpic.hue - 0x8000) >> 10;
 const int hue2_corr = (hue_correction - 128) / 4;
 const int ccm = 128;
 int i, u, v, rw, data_w=0, data_h=0, color_corr;
 static unsigned char lineBuffer[640*3];
 int line;

 color_corr = (uvd->vpic.colour - 0x8000) >> 8;
 RESTRICT_TO_RANGE(color_corr, -ccm, ccm+1);

 v4l_linesize = VIDEOSIZE_X(frame->request) * V4L_BYTES_PER_PIXEL;


 switch (frame->header) {



 case 0x0308:
  data_w = 640;
  data_h = 480;
  break;
 case 0x0208:
  data_w = 320;
  data_h = 240;
  break;
 case 0x020A:
  data_w = 160;
  data_h = 120;
  break;



 case 0x0328:
 case 0x0368:
 case 0x0228:
 case 0x0268:
 case 0x02CA:
 case 0x02EA:

  err("Unsupported mode $%04lx", frame->header);
  return scan_NextFrame;
 default:

  err("Strange frame->header=$%08lx", frame->header);
  return scan_NextFrame;
 }







 if ((frame->curline + 1) >= data_h) {
  if (uvd->debug >= 3)
   dev_info(&uvd->dev->dev,
     "Reached line %d. (frame is done)\n",
     frame->curline);
  return scan_NextFrame;
 }


 len = 3 * data_w;
 assert(len <= sizeof(lineBuffer));


 if (RingQueue_GetLength(&uvd->dp) < len)
  return scan_Out;


 RingQueue_Dequeue(&uvd->dp, lineBuffer, len);

 data = lineBuffer;
 color = data + data_w;


 rw = (int)VIDEOSIZE_Y(frame->request) - (int)(frame->curline) - 1;
 RESTRICT_TO_RANGE(rw, 0, VIDEOSIZE_Y(frame->request)-1);


 for (line = 0; line < 2; line++) {
  for (i = 0; i < VIDEOSIZE_X(frame->request); i++) {
   int y;
   int rv, gv, bv;

   if (i >= data_w) {
    RGB24_PUTPIXEL(frame, i, rw, 0, 0, 0);
    continue;
   }


   y = data[(line == 0) ? i : (i*2 + 1)];


   u = color[(i/2)*4] + hue_corr;
   v = color[(i/2)*4 + 2] + hue2_corr;


   if (color_corr != 0) {

    u = 128 + ((ccm + color_corr) * (u - 128)) / ccm;
    v = 128 + ((ccm + color_corr) * (v - 128)) / ccm;
   }


   YUV_TO_RGB_BY_THE_BOOK(y, u, v, rv, gv, bv);
   RGB24_PUTPIXEL(frame, i, rw, rv, gv, bv);
  }


  if (rw == 0)
   break;


  rw--;
  data = lineBuffer + data_w;
 }
 frame->deinterlace = Deinterlace_None;







 frame->curline += 2;
 *pcopylen += 2 * v4l_linesize;

 if (frame->curline >= VIDEOSIZE_Y(frame->request)) {
  if (uvd->debug >= 3) {
   dev_info(&uvd->dev->dev,
     "All requested lines (%ld.) done.\n",
     VIDEOSIZE_Y(frame->request));
  }
  return scan_NextFrame;
 } else
  return scan_Continue;
}
