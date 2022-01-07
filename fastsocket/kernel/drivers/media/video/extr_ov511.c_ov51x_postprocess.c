
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ov511 {int maxheight; int maxwidth; } ;
struct ov511_frame {int format; int bytes_recvd; int rawdata; int data; } ;


 int MAX_DATA_SIZE (int ,int ) ;
 int PDEBUG (int,char*,int ) ;



 scalar_t__ dumppix ;
 int err (char*,int ) ;
 int memcpy (int ,int ,int ) ;
 int memset (int ,int ,int ) ;
 int ov51x_postprocess_grey (struct usb_ov511*,struct ov511_frame*) ;
 int ov51x_postprocess_yuv420 (struct usb_ov511*,struct ov511_frame*) ;
 int symbolic (int ,int) ;
 int v4l1_plist ;

__attribute__((used)) static void
ov51x_postprocess(struct usb_ov511 *ov, struct ov511_frame *frame)
{
 if (dumppix) {
  memset(frame->data, 0,
   MAX_DATA_SIZE(ov->maxwidth, ov->maxheight));
  PDEBUG(4, "Dumping %d bytes", frame->bytes_recvd);
  memcpy(frame->data, frame->rawdata, frame->bytes_recvd);
 } else {
  switch (frame->format) {
  case 130:
   ov51x_postprocess_grey(ov, frame);
   break;
  case 129:
  case 128:
   ov51x_postprocess_yuv420(ov, frame);
   break;
  default:
   err("Cannot convert data to %s",
       symbolic(v4l1_plist, frame->format));
  }
 }
}
