
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int frame_num; } ;
struct uvd {int curframe; TYPE_1__ stats; int dp; scalar_t__ user_data; } ;
struct usbvideo_frame {scalar_t__ scanstate; int curline; int seqRead_Length; int frameState; scalar_t__ data; } ;
struct rgb {int b2; int g2; int r2; int b; int g; int r; } ;
struct qcm {int size; int height; int width; scalar_t__ scratch; } ;
struct bayL1 {int b; int g; } ;
struct bayL0 {int r; int g; } ;


 int FrameState_Done_Hold ;
 int FrameState_Grabbing ;
 int RING_QUEUE_DEQUEUE_BYTES (int *,int) ;
 int RING_QUEUE_PEEK (int *,int) ;
 int RingQueue_Dequeue (int *,scalar_t__,int) ;
 int RingQueue_GetLength (int *) ;


 scalar_t__ ScanState_Lines ;
 scalar_t__ ScanState_Scanning ;
 int assert (int ) ;

__attribute__((used)) static void qcm_process_isoc(struct uvd *uvd, struct usbvideo_frame *frame)
{
 struct qcm *cam = (struct qcm *) uvd->user_data;
 int x;
 struct rgb *rgbL0;
 struct rgb *rgbL1;
 struct bayL0 *bayL0;
 struct bayL1 *bayL1;
 int hor,ver,hordel,verdel;
 assert(frame != ((void*)0));

 switch (cam->size) {
 case 129:
  hor = 162; ver = 124; hordel = 1; verdel = 2;
  break;
 case 128:
 default:
  hor = 324; ver = 248; hordel = 2; verdel = 4;
  break;
 }

 if (frame->scanstate == ScanState_Scanning) {
  while (RingQueue_GetLength(&uvd->dp) >=
    4 + (hor*verdel + hordel)) {
   if ((RING_QUEUE_PEEK(&uvd->dp, 0) == 0x00) &&
       (RING_QUEUE_PEEK(&uvd->dp, 1) == 0xff) &&
       (RING_QUEUE_PEEK(&uvd->dp, 2) == 0x00) &&
       (RING_QUEUE_PEEK(&uvd->dp, 3) == 0xff)) {
    frame->curline = 0;
    frame->scanstate = ScanState_Lines;
    frame->frameState = FrameState_Grabbing;
    RING_QUEUE_DEQUEUE_BYTES(&uvd->dp, 4);





    RING_QUEUE_DEQUEUE_BYTES(&uvd->dp,
       (hor*verdel + hordel));
    break;
   }
   RING_QUEUE_DEQUEUE_BYTES(&uvd->dp, 1);
  }
 }

 if (frame->scanstate == ScanState_Scanning)
  return;






 while ( frame->curline < cam->height &&
  (RingQueue_GetLength(&uvd->dp) >= hor*2)) {


  RingQueue_Dequeue(&uvd->dp, cam->scratch, hor*2);
  bayL0 = (struct bayL0 *) cam->scratch;
  bayL1 = (struct bayL1 *) (cam->scratch + hor);

  rgbL0 = (struct rgb *)
    ( frame->data + (cam->width*3*frame->curline));

  rgbL1 = rgbL0 + (cam->width/2);

  for (x=0; x < cam->width; x+=2) {
   rgbL0->r = bayL0->r;
   rgbL0->g = bayL0->g;
   rgbL0->b = bayL1->b;

   rgbL0->r2 = bayL0->r;
   rgbL0->g2 = bayL1->g;
   rgbL0->b2 = bayL1->b;

   rgbL1->r = bayL0->r;
   rgbL1->g = bayL1->g;
   rgbL1->b = bayL1->b;

   rgbL1->r2 = bayL0->r;
   rgbL1->g2 = bayL1->g;
   rgbL1->b2 = bayL1->b;

   rgbL0++;
   rgbL1++;

   bayL0++;
   bayL1++;
  }

  frame->seqRead_Length += cam->width*3*2;
  frame->curline += 2;
 }

 if (frame->curline == cam->height) {
  frame->frameState = FrameState_Done_Hold;
  frame->curline = 0;
  uvd->curframe = -1;
  uvd->stats.frame_num++;
 }
}
