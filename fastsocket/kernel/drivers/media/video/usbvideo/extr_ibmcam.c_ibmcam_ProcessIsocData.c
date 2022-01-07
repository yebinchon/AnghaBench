
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int frame_num; } ;
struct uvd {scalar_t__ videosize; int curframe; int max_frame_size; TYPE_1__ stats; int dp; } ;
struct usbvideo_frame {scalar_t__ scanstate; long seqRead_Length; int frameState; int data; int flags; } ;
typedef enum ParseState { ____Placeholder_ParseState } ParseState ;
struct TYPE_4__ {int camera_model; } ;


 int FrameState_Done ;
 int FrameState_Ready ;
 int IBMCAM_MODEL_2 ;
 int IBMCAM_MODEL_3 ;
 int IBMCAM_MODEL_4 ;
 TYPE_2__* IBMCAM_T (struct uvd*) ;
 scalar_t__ RingQueue_GetLength (int *) ;
 scalar_t__ ScanState_Lines ;
 scalar_t__ ScanState_Scanning ;
 int USBVIDEO_FRAME_FLAG_SOFTWARE_CONTRAST ;
 scalar_t__ VIDEOSIZE_128x96 ;
 scalar_t__ VIDEOSIZE_320x240 ;
 scalar_t__ VIDEOSIZE_352x240 ;
 scalar_t__ VIDEOSIZE_352x288 ;
 int ibmcam_find_header (struct uvd*) ;
 int ibmcam_model2_320x240_parse_lines (struct uvd*,struct usbvideo_frame*,long*) ;
 int ibmcam_model3_parse_lines (struct uvd*,struct usbvideo_frame*,long*) ;
 int ibmcam_model4_128x96_parse_lines (struct uvd*,struct usbvideo_frame*,long*) ;
 int ibmcam_parse_lines (struct uvd*,struct usbvideo_frame*,long*) ;
 int memset (int ,int ,int ) ;
 int scan_Continue ;
 int scan_NextFrame ;
 int scan_Out ;

__attribute__((used)) static void ibmcam_ProcessIsocData(struct uvd *uvd,
       struct usbvideo_frame *frame)
{
 enum ParseState newstate;
 long copylen = 0;
 int mod = IBMCAM_T(uvd)->camera_model;

 while (1) {
  newstate = scan_Out;
  if (RingQueue_GetLength(&uvd->dp) > 0) {
   if (frame->scanstate == ScanState_Scanning) {
    newstate = ibmcam_find_header(uvd);
   } else if (frame->scanstate == ScanState_Lines) {
    if ((mod == IBMCAM_MODEL_2) &&
        ((uvd->videosize == VIDEOSIZE_352x288) ||
         (uvd->videosize == VIDEOSIZE_320x240) ||
         (uvd->videosize == VIDEOSIZE_352x240)))
    {
     newstate = ibmcam_model2_320x240_parse_lines(
      uvd, frame, &copylen);
    } else if (mod == IBMCAM_MODEL_4) {





     if ((uvd->videosize == VIDEOSIZE_352x288) ||
         (uvd->videosize == VIDEOSIZE_320x240) ||
         (uvd->videosize == VIDEOSIZE_352x240))
     {
      newstate = ibmcam_model2_320x240_parse_lines(uvd, frame, &copylen);
     } else if (uvd->videosize == VIDEOSIZE_128x96) {
      newstate = ibmcam_model4_128x96_parse_lines(uvd, frame, &copylen);
     } else {
      newstate = ibmcam_parse_lines(uvd, frame, &copylen);
     }
    } else if (mod == IBMCAM_MODEL_3) {
     newstate = ibmcam_model3_parse_lines(uvd, frame, &copylen);
    } else {
     newstate = ibmcam_parse_lines(uvd, frame, &copylen);
    }
   }
  }
  if (newstate == scan_Continue)
   continue;
  else if ((newstate == scan_NextFrame) || (newstate == scan_Out))
   break;
  else
   return;
 }

 if (newstate == scan_NextFrame) {
  frame->frameState = FrameState_Done;
  uvd->curframe = -1;
  uvd->stats.frame_num++;
  if ((mod == IBMCAM_MODEL_2) || (mod == IBMCAM_MODEL_4)) {

   frame->flags |= USBVIDEO_FRAME_FLAG_SOFTWARE_CONTRAST;
  }
 }


 frame->seqRead_Length += copylen;
}
