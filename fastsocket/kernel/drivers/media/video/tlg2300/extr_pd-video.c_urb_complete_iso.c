
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct video_data {int bubble_work; int is_streaming; } ;
struct urb {int number_of_packets; scalar_t__ transfer_buffer; struct front_face* context; } ;
struct front_face {TYPE_1__* pd; } ;
struct TYPE_2__ {struct video_data video_data; } ;






 int GFP_ATOMIC ;
 int ISO_PKT_SIZE ;
 int check_trailer (struct video_data*,char*,int) ;
 int copy_vbi_video_data (struct video_data*,char*,int) ;
 int get_chunk (int,struct urb*,int*,int*,int*) ;
 int get_video_frame (struct front_face*,struct video_data*) ;
 int log (char*,...) ;
 int schedule_work (int *) ;
 int usb_submit_urb (struct urb*,int ) ;

__attribute__((used)) static void urb_complete_iso(struct urb *urb)
{
 struct front_face *front = urb->context;
 struct video_data *video = &front->pd->video_data;
 int bubble_err = 0, head = 0, tail = 0;
 char *src = (char *)urb->transfer_buffer;
 int ret = 0;

 if (!video->is_streaming)
  return;

 do {
  if (!get_video_frame(front, video))
   goto out;

  switch (get_chunk(head, urb, &head, &tail, &bubble_err)) {
  case 130:
   copy_vbi_video_data(video, src + (head * ISO_PKT_SIZE),
     (tail - head + 1) * ISO_PKT_SIZE);
   break;
  case 128:
   check_trailer(video, src + (head * ISO_PKT_SIZE),
     ISO_PKT_SIZE);
   break;
  case 131:
   goto out;
  case 129:
   log("\t We got too much bubble");
   schedule_work(&video->bubble_work);
   return;
  }
 } while (head = tail + 1, head < urb->number_of_packets);

out:
 ret = usb_submit_urb(urb, GFP_ATOMIC);
 if (ret)
  log("usb_submit_urb err : %d", ret);
}
