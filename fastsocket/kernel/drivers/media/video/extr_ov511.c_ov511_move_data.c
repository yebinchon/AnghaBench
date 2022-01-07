
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_ov511 {int packet_size; int maxwidth; int maxheight; size_t curframe; int minwidth; int minheight; struct ov511_frame* frame; TYPE_1__* dev; } ;
struct timeval {int dummy; } ;
struct ov511_frame {int rawwidth; int rawheight; int bytes_recvd; scalar_t__ scanstate; scalar_t__ grabstate; int snapshot; unsigned char compressed; scalar_t__ rawdata; int wq; scalar_t__ data; } ;
typedef int in ;
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
 int dev_info (int *,char*,int,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char) ;
 int do_gettimeofday (struct timeval*) ;
 int dumppix ;
 int memcpy (scalar_t__,unsigned char*,int) ;
 scalar_t__ printph ;
 int remove_zeros ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static inline void
ov511_move_data(struct usb_ov511 *ov, unsigned char *in, int n)
{
 int num, offset;
 int pnum = in[ov->packet_size - 1];
 int max_raw = MAX_RAW_DATA_SIZE(ov->maxwidth, ov->maxheight);
 struct ov511_frame *frame = &ov->frame[ov->curframe];
 struct timeval *ts;
 if (printph) {
  dev_info(&ov->dev->dev,
    "ph(%3d): %2x %2x %2x %2x %2x %2x %2x %2x %2x %2x %2x %2x\n",
    pnum, in[0], in[1], in[2], in[3], in[4], in[5], in[6],
    in[7], in[8], in[9], in[10], in[11]);
 }


 if ((in[0] | in[1] | in[2] | in[3] | in[4] | in[5] | in[6] | in[7]) ||
     (~in[8] & 0x08))
  goto check_middle;


 if (in[8] & 0x80) {
  ts = (struct timeval *)(frame->data
        + MAX_FRAME_SIZE(ov->maxwidth, ov->maxheight));
  do_gettimeofday(ts);


  frame->rawwidth = ((int)(in[9]) + 1) * 8;
  frame->rawheight = ((int)(in[10]) + 1) * 8;

  PDEBUG(4, "Frame end, frame=%d, pnum=%d, w=%d, h=%d, recvd=%d",
   ov->curframe, pnum, frame->rawwidth, frame->rawheight,
   frame->bytes_recvd);


  RESTRICT_TO_RANGE(frame->rawwidth, ov->minwidth, ov->maxwidth);
  RESTRICT_TO_RANGE(frame->rawheight, ov->minheight,
      ov->maxheight);


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
   } else {
    if (frame->grabstate == FRAME_DONE) {
     PDEBUG(4, "** Frame done **");
    } else {
     PDEBUG(4, "Frame not ready? state = %d",
      ov->frame[nextf].grabstate);
    }

    ov->curframe = -1;
   }
  } else {
   PDEBUG(5, "Frame done, but not scanning");
  }



 } else {

  PDEBUG(4, "Frame start, framenum = %d", ov->curframe);



  if (in[8] & 0x02) {
   frame->snapshot = 1;
   PDEBUG(3, "snapshot detected");
  }

  frame->scanstate = STATE_LINES;
  frame->bytes_recvd = 0;
  frame->compressed = in[8] & 0x40;
 }

check_middle:

 if (frame->scanstate != STATE_LINES) {
  PDEBUG(5, "Not in a frame; packet skipped");
  return;
 }


 if (frame->bytes_recvd == 0)
  offset = 9;
 else
  offset = 0;

 num = n - offset - 1;


 if (dumppix == 2) {
  frame->bytes_recvd += n - 1;
  if (frame->bytes_recvd <= max_raw)
   memcpy(frame->rawdata + frame->bytes_recvd - (n - 1),
    in, n - 1);
  else
   PDEBUG(3, "Raw data buffer overrun!! (%d)",
    frame->bytes_recvd - max_raw);
 } else if (!frame->compressed && !remove_zeros) {
  frame->bytes_recvd += num;
  if (frame->bytes_recvd <= max_raw)
   memcpy(frame->rawdata + frame->bytes_recvd - num,
    in + offset, num);
  else
   PDEBUG(3, "Raw data buffer overrun!! (%d)",
    frame->bytes_recvd - max_raw);
 } else {
  int b, read = 0, allzero, copied = 0;
  if (offset) {
   frame->bytes_recvd += 32 - offset;
   memcpy(frame->rawdata, in + offset, 32 - offset);
   read += 32;
  }

  while (read < n - 1) {
   allzero = 1;
   for (b = 0; b < 32; b++) {
    if (in[read + b]) {
     allzero = 0;
     break;
    }
   }

   if (allzero) {

   } else {
    if (frame->bytes_recvd + copied + 32 <= max_raw)
    {
     memcpy(frame->rawdata
      + frame->bytes_recvd + copied,
      in + read, 32);
     copied += 32;
    } else {
     PDEBUG(3, "Raw data buffer overrun!!");
    }
   }
   read += 32;
  }

  frame->bytes_recvd += copied;
 }
}
