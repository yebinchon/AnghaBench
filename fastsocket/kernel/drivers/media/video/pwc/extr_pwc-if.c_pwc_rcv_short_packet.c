
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwc_frame_buf {int filled; scalar_t__ data; } ;
struct pwc_device {int type; scalar_t__ drop_frames; unsigned char vmirror; int frame_total_size; int vframe_count; int vframes_error; } ;


 int PWC_DEBUG_FLOW (char*,int) ;
 int PWC_TRACE (char*) ;
 int pwc_frame_dumped (struct pwc_device*) ;
 scalar_t__ pwc_next_fill_frame (struct pwc_device*) ;
 int pwc_snapshot_button (struct pwc_device*,unsigned char) ;

__attribute__((used)) static int pwc_rcv_short_packet(struct pwc_device *pdev, const struct pwc_frame_buf *fbuf)
{
 int awake = 0;





 if (pdev->type == 730) {
  unsigned char *ptr = (unsigned char *)fbuf->data;

  if (ptr[1] == 1 && ptr[0] & 0x10) {
   PWC_TRACE("Hyundai CMOS sensor bug. Dropping frame.\n");
   pdev->drop_frames += 2;
   pdev->vframes_error++;
  }
  if ((ptr[0] ^ pdev->vmirror) & 0x01) {
   pwc_snapshot_button(pdev, ptr[0] & 0x01);
  }
  if ((ptr[0] ^ pdev->vmirror) & 0x02) {
   if (ptr[0] & 0x02)
    PWC_TRACE("Image is mirrored.\n");
   else
    PWC_TRACE("Image is normal.\n");
  }
  pdev->vmirror = ptr[0] & 0x03;
  if (fbuf->filled == 4)
   pdev->drop_frames++;
 }
 else if (pdev->type == 740 || pdev->type == 720) {
  unsigned char *ptr = (unsigned char *)fbuf->data;
  if ((ptr[0] ^ pdev->vmirror) & 0x01) {
   pwc_snapshot_button(pdev, ptr[0] & 0x01);
  }
  pdev->vmirror = ptr[0] & 0x03;
 }




 if (pdev->drop_frames > 0)
  pdev->drop_frames--;
 else {

  if (fbuf->filled < pdev->frame_total_size) {
   PWC_DEBUG_FLOW("Frame buffer underflow (%d bytes);"
           " discarded.\n", fbuf->filled);
   pdev->vframes_error++;
  }
  else {

   awake = 1;





   if (pwc_next_fill_frame(pdev))
    pwc_frame_dumped(pdev);

  }
 }
 pdev->vframe_count++;
 return awake;
}
