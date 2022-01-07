
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct video_data {int is_streaming; } ;
struct urb {int actual_length; int transfer_buffer_length; scalar_t__ status; scalar_t__ transfer_buffer; struct front_face* context; } ;
struct front_face {TYPE_1__* pd; } ;
struct TYPE_2__ {struct video_data video_data; } ;


 scalar_t__ EPROTO ;
 int GFP_ATOMIC ;
 int check_trailer (struct video_data*,char*,int) ;
 int copy_vbi_video_data (struct video_data*,char*,int) ;
 int get_video_frame (struct front_face*,struct video_data*) ;
 int log (char*,int) ;
 int usb_submit_urb (struct urb*,int ) ;

__attribute__((used)) static void urb_complete_bulk(struct urb *urb)
{
 struct front_face *front = urb->context;
 struct video_data *video = &front->pd->video_data;
 char *src = (char *)urb->transfer_buffer;
 int count = urb->actual_length;
 int ret = 0;

 if (!video->is_streaming || urb->status) {
  if (urb->status == -EPROTO)
   goto resend_it;
  return;
 }
 if (!get_video_frame(front, video))
  goto resend_it;

 if (count == urb->transfer_buffer_length)
  copy_vbi_video_data(video, src, count);
 else
  check_trailer(video, src, count);

resend_it:
 ret = usb_submit_urb(urb, GFP_ATOMIC);
 if (ret)
  log(" submit failed: error %d", ret);
}
