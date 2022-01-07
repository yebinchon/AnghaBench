
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ov511 {scalar_t__ sensor; } ;
struct ov511_frame {int rawheight; int data; int rawdata; scalar_t__ compressed; int tempdata; } ;


 int RAWFMT_YUV400 ;
 scalar_t__ SEN_SAA7111A ;
 int decompress (struct usb_ov511*,struct ov511_frame*,int ,int ) ;
 int deinterlace (struct ov511_frame*,int ,int ,int ) ;
 int yuv400raw_to_yuv400p (struct ov511_frame*,int ,int ) ;

__attribute__((used)) static void
ov51x_postprocess_grey(struct usb_ov511 *ov, struct ov511_frame *frame)
{

  if (ov->sensor == SEN_SAA7111A && frame->rawheight >= 480) {
   if (frame->compressed)
    decompress(ov, frame, frame->rawdata,
       frame->tempdata);
   else
    yuv400raw_to_yuv400p(frame, frame->rawdata,
           frame->tempdata);

   deinterlace(frame, RAWFMT_YUV400, frame->tempdata,
        frame->data);
  } else {
   if (frame->compressed)
    decompress(ov, frame, frame->rawdata,
       frame->data);
   else
    yuv400raw_to_yuv400p(frame, frame->rawdata,
           frame->data);
  }
}
