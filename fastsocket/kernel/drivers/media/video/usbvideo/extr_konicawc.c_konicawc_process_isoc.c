
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int frame_num; } ;
struct uvd {int curframe; TYPE_2__ stats; int dp; TYPE_1__* dev; scalar_t__ user_data; } ;
struct usbvideo_frame {int curline; int seqRead_Length; int frameState; scalar_t__ data; int scanstate; } ;
struct konicawc {int maxline; int yplanesz; int lastframe; } ;
struct TYPE_3__ {int dev; } ;


 int DEBUG (int,char*,...) ;
 int FrameState_Done_Hold ;
 int RING_QUEUE_DEQUEUE_BYTES (int *,int) ;
 int RING_QUEUE_PEEK (int *,int) ;
 int RingQueue_Dequeue (int *,scalar_t__,int) ;
 int RingQueue_GetLength (int *) ;
 int ScanState_Lines ;
 int ScanState_Scanning ;
 int assert (int ) ;
 int dev_info (int *,char*,int,int,int) ;

__attribute__((used)) static void konicawc_process_isoc(struct uvd *uvd, struct usbvideo_frame *frame)
{
 struct konicawc *cam = (struct konicawc *)uvd->user_data;
 int maxline = cam->maxline;
 int yplanesz = cam->yplanesz;

 assert(frame != ((void*)0));

 DEBUG(5, "maxline = %d yplanesz = %d", maxline, yplanesz);
 DEBUG(3, "Frame state = %d", frame->scanstate);

 if(frame->scanstate == ScanState_Scanning) {
  int drop = 0;
  int curframe;
  int fdrops = 0;
  DEBUG(3, "Searching for marker, queue len = %d", RingQueue_GetLength(&uvd->dp));
  while(RingQueue_GetLength(&uvd->dp) >= 4) {
   if ((RING_QUEUE_PEEK(&uvd->dp, 0) == 0x00) &&
       (RING_QUEUE_PEEK(&uvd->dp, 1) == 0xff) &&
       (RING_QUEUE_PEEK(&uvd->dp, 2) == 0x00) &&
       (RING_QUEUE_PEEK(&uvd->dp, 3) < 0x80)) {
    curframe = RING_QUEUE_PEEK(&uvd->dp, 3);
    if(cam->lastframe >= 0) {
     fdrops = (0x80 + curframe - cam->lastframe) & 0x7F;
     fdrops--;
     if(fdrops) {
      dev_info(&uvd->dev->dev,
        "Dropped %d frames "
        "(%d -> %d)\n",
        fdrops,
        cam->lastframe,
        curframe);
     }
    }
    cam->lastframe = curframe;
    frame->curline = 0;
    frame->scanstate = ScanState_Lines;
    RING_QUEUE_DEQUEUE_BYTES(&uvd->dp, 4);
    break;
   }
   RING_QUEUE_DEQUEUE_BYTES(&uvd->dp, 1);
   drop++;
  }
  if(drop)
   DEBUG(2, "dropped %d bytes looking for new frame", drop);
 }

 if(frame->scanstate == ScanState_Scanning)
  return;







 while ( frame->curline < maxline && (RingQueue_GetLength(&uvd->dp) >= 384)) {

  RingQueue_Dequeue(&uvd->dp, frame->data + (frame->curline * 256), 256);

  RingQueue_Dequeue(&uvd->dp, frame->data + yplanesz + (frame->curline * 64), 64);

  RingQueue_Dequeue(&uvd->dp, frame->data + (5 * yplanesz)/4 + (frame->curline * 64), 64);
  frame->seqRead_Length += 384;
  frame->curline++;
 }

 if (frame->curline == maxline) {
  DEBUG(5, "got whole frame");

  frame->frameState = FrameState_Done_Hold;
  frame->curline = 0;
  uvd->curframe = -1;
  uvd->stats.frame_num++;
 }
}
