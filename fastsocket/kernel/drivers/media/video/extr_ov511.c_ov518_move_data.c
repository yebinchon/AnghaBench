
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_ov511 {int maxwidth; int maxheight; size_t curframe; int minwidth; int minheight; struct ov511_frame* frame; TYPE_1__* dev; scalar_t__ packet_numbering; } ;
struct timeval {int dummy; } ;
struct ov511_frame {scalar_t__ scanstate; int bytes_recvd; int rawwidth; int width; int rawheight; int height; scalar_t__ grabstate; int snapshot; int compressed; scalar_t__ rawdata; int framenum; int wq; scalar_t__ data; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ FRAME_DONE ;
 scalar_t__ FRAME_GRABBING ;
 scalar_t__ FRAME_READY ;
 scalar_t__ MAX_FRAME_SIZE (int,int) ;
 int MAX_RAW_DATA_SIZE (int,int) ;
 int OV511_NUMFRAMES ;
 int PDEBUG (int,char*,...) ;
 int RESTRICT_TO_RANGE (int,int,int) ;
 scalar_t__ STATE_LINES ;
 scalar_t__ STATE_SCANNING ;
 int dev_info (int *,char*,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char) ;
 int do_gettimeofday (struct timeval*) ;
 int dumppix ;
 int memcpy (scalar_t__,unsigned char*,int) ;
 scalar_t__ printph ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static inline void
ov518_move_data(struct usb_ov511 *ov, unsigned char *in, int n)
{
 int max_raw = MAX_RAW_DATA_SIZE(ov->maxwidth, ov->maxheight);
 struct ov511_frame *frame = &ov->frame[ov->curframe];
 struct timeval *ts;


 if (ov->packet_numbering)
  --n;



 if ((!(in[0] | in[1] | in[2] | in[3] | in[5])) && in[6]) {
  if (printph) {
   dev_info(&ov->dev->dev,
     "ph: %2x %2x %2x %2x %2x %2x %2x %2x\n",
     in[0], in[1], in[2], in[3], in[4], in[5],
     in[6], in[7]);
  }

  if (frame->scanstate == STATE_LINES) {
   PDEBUG(4, "Detected frame end/start");
   goto eof;
  } else {

   PDEBUG(4, "Frame start, framenum = %d", ov->curframe);
   goto sof;
  }
 } else {
  goto check_middle;
 }

eof:
 ts = (struct timeval *)(frame->data
       + MAX_FRAME_SIZE(ov->maxwidth, ov->maxheight));
 do_gettimeofday(ts);

 PDEBUG(4, "Frame end, curframe = %d, hw=%d, vw=%d, recvd=%d",
  ov->curframe,
  (int)(in[9]), (int)(in[10]), frame->bytes_recvd);



 frame->rawwidth = frame->width;
 frame->rawheight = frame->height;


 RESTRICT_TO_RANGE(frame->rawwidth, ov->minwidth, ov->maxwidth);
 RESTRICT_TO_RANGE(frame->rawheight, ov->minheight, ov->maxheight);


 RESTRICT_TO_RANGE(frame->bytes_recvd, 8, max_raw);

 if (frame->scanstate == STATE_LINES) {
  int nextf;

  frame->grabstate = FRAME_DONE;
  wake_up_interruptible(&frame->wq);



  nextf = (ov->curframe + 1) % OV511_NUMFRAMES;
  if (ov->frame[nextf].grabstate == FRAME_READY
      || ov->frame[nextf].grabstate == FRAME_GRABBING) {
   ov->curframe = nextf;
   ov->frame[nextf].scanstate = STATE_SCANNING;
   frame = &ov->frame[nextf];
  } else {
   if (frame->grabstate == FRAME_DONE) {
    PDEBUG(4, "** Frame done **");
   } else {
    PDEBUG(4, "Frame not ready? state = %d",
           ov->frame[nextf].grabstate);
   }

   ov->curframe = -1;
   PDEBUG(4, "SOF dropped (no active frame)");
   return;
  }
 }
sof:
 PDEBUG(4, "Starting capture on frame %d", frame->framenum);
 frame->scanstate = STATE_LINES;
 frame->bytes_recvd = 0;
 frame->compressed = 1;

check_middle:

 if (frame->scanstate != STATE_LINES) {
  PDEBUG(4, "scanstate: no SOF yet");
  return;
 }


 if (dumppix == 2) {
  frame->bytes_recvd += n;
  if (frame->bytes_recvd <= max_raw)
   memcpy(frame->rawdata + frame->bytes_recvd - n, in, n);
  else
   PDEBUG(3, "Raw data buffer overrun!! (%d)",
    frame->bytes_recvd - max_raw);
 } else {
  int b, read = 0, allzero, copied = 0;

  while (read < n) {
   allzero = 1;
   for (b = 0; b < 8; b++) {
    if (in[read + b]) {
     allzero = 0;
     break;
    }
   }

   if (allzero) {

   } else {
    if (frame->bytes_recvd + copied + 8 <= max_raw)
    {
     memcpy(frame->rawdata
      + frame->bytes_recvd + copied,
      in + read, 8);
     copied += 8;
    } else {
     PDEBUG(3, "Raw data buffer overrun!!");
    }
   }
   read += 8;
  }
  frame->bytes_recvd += copied;
 }
}
