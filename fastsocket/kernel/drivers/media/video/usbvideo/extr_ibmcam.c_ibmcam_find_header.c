
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int header_count; } ;
struct uvd {scalar_t__ curframe; int debug; TYPE_2__ stats; TYPE_1__* dev; int dp; int videosize; struct usbvideo_frame* frame; } ;
struct usbvideo_frame {int header; scalar_t__ curline; int scanstate; } ;
struct TYPE_7__ {int has_hdr; int camera_model; } ;
typedef TYPE_3__ ibmcam_t ;
typedef enum ParseState { ____Placeholder_ParseState } ParseState ;
struct TYPE_5__ {int dev; } ;


 int FLAGS_FORCE_TESTPATTERN ;
 int HDRSIG_MODEL1_128x96 ;
 int HDRSIG_MODEL1_176x144 ;
 int HDRSIG_MODEL1_352x288 ;




 TYPE_3__* IBMCAM_T (struct uvd*) ;
 int RING_QUEUE_DEQUEUE_BYTES (int *,int const) ;
 int RING_QUEUE_PEEK (int *,int) ;
 int const RingQueue_GetLength (int *) ;
 int ScanState_Lines ;
 scalar_t__ USBVIDEO_NUMFRAMES ;

 int assert (int ) ;
 int dev_info (int *,char*,...) ;
 int err (char*,scalar_t__) ;
 int flags ;
 int scan_Continue ;
 int scan_EndParse ;
 int scan_NextFrame ;
 int usbvideo_TestPattern (struct uvd*,int,int) ;

__attribute__((used)) static enum ParseState ibmcam_find_header(struct uvd *uvd)
{
 struct usbvideo_frame *frame;
 ibmcam_t *icam;

 if ((uvd->curframe) < 0 || (uvd->curframe >= USBVIDEO_NUMFRAMES)) {
  err("ibmcam_find_header: Illegal frame %d.", uvd->curframe);
  return scan_EndParse;
 }
 icam = IBMCAM_T(uvd);
 assert(icam != ((void*)0));
 frame = &uvd->frame[uvd->curframe];
 icam->has_hdr = 0;
 switch (icam->camera_model) {
 case 132:
 {
  const int marker_len = 4;
  while (RingQueue_GetLength(&uvd->dp) >= marker_len) {
   if ((RING_QUEUE_PEEK(&uvd->dp, 0) == 0x00) &&
       (RING_QUEUE_PEEK(&uvd->dp, 1) == 0xFF) &&
       (RING_QUEUE_PEEK(&uvd->dp, 2) == 0x00))
   {





    frame->header = RING_QUEUE_PEEK(&uvd->dp, 3);
    if ((frame->header == HDRSIG_MODEL1_128x96) ||
        (frame->header == HDRSIG_MODEL1_176x144) ||
        (frame->header == HDRSIG_MODEL1_352x288))
    {




     RING_QUEUE_DEQUEUE_BYTES(&uvd->dp, marker_len);
     icam->has_hdr = 1;
     break;
    }
   }

   RING_QUEUE_DEQUEUE_BYTES(&uvd->dp, 1);
  }
  break;
 }
 case 131:
case 129:
 {
  int marker_len = 0;
  switch (uvd->videosize) {
  case 128:
   marker_len = 10;
   break;
  default:
   marker_len = 2;
   break;
  }
  while (RingQueue_GetLength(&uvd->dp) >= marker_len) {
   if ((RING_QUEUE_PEEK(&uvd->dp, 0) == 0x00) &&
       (RING_QUEUE_PEEK(&uvd->dp, 1) == 0xFF))
   {



    RING_QUEUE_DEQUEUE_BYTES(&uvd->dp, marker_len);
    icam->has_hdr = 1;
    frame->header = HDRSIG_MODEL1_176x144;
    break;
   }

   RING_QUEUE_DEQUEUE_BYTES(&uvd->dp, 1);
  }
  break;
 }
 case 130:
 {
  const int marker_len = 4;
  while (RingQueue_GetLength(&uvd->dp) >= marker_len) {
   if ((RING_QUEUE_PEEK(&uvd->dp, 0) == 0x00) &&
       (RING_QUEUE_PEEK(&uvd->dp, 1) == 0xFF) &&
       (RING_QUEUE_PEEK(&uvd->dp, 2) != 0xFF))
   {




    unsigned long byte3, byte4;

    byte3 = RING_QUEUE_PEEK(&uvd->dp, 2);
    byte4 = RING_QUEUE_PEEK(&uvd->dp, 3);
    frame->header = (byte3 << 8) | byte4;



    RING_QUEUE_DEQUEUE_BYTES(&uvd->dp, marker_len);
    icam->has_hdr = 1;
    break;
   }

   RING_QUEUE_DEQUEUE_BYTES(&uvd->dp, 1);
  }
  break;
 }
 default:
  break;
 }
 if (!icam->has_hdr) {
  if (uvd->debug > 2)
   dev_info(&uvd->dev->dev,
     "Skipping frame, no header\n");
  return scan_EndParse;
 }


 icam->has_hdr = 1;
 uvd->stats.header_count++;
 frame->scanstate = ScanState_Lines;
 frame->curline = 0;

 if (flags & FLAGS_FORCE_TESTPATTERN) {
  usbvideo_TestPattern(uvd, 1, 1);
  return scan_NextFrame;
 }
 return scan_Continue;
}
