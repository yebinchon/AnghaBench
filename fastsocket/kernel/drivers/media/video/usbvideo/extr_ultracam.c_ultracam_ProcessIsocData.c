
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int frame_num; } ;
struct uvd {int max_frame_size; int curframe; TYPE_1__ stats; int dp; } ;
struct usbvideo_frame {int seqRead_Length; int data; int frameState; } ;


 int FrameState_Done ;
 int RingQueue_Dequeue (int *,int,int) ;
 int RingQueue_GetLength (int *) ;
 int assert (int ) ;

__attribute__((used)) static void ultracam_ProcessIsocData(struct uvd *uvd, struct usbvideo_frame *frame)
{
 int n;

 assert(uvd != ((void*)0));
 assert(frame != ((void*)0));


 n = RingQueue_GetLength(&uvd->dp);
 if (n > 0) {
  int m;

  m = uvd->max_frame_size - frame->seqRead_Length;
  if (n > m)
   n = m;

  RingQueue_Dequeue(
   &uvd->dp,
   frame->data + frame->seqRead_Length,
   m);
  frame->seqRead_Length += m;
 }

 if (frame->seqRead_Length >= uvd->max_frame_size) {
  frame->frameState = FrameState_Done;
  uvd->curframe = -1;
  uvd->stats.frame_num++;
 }
}
