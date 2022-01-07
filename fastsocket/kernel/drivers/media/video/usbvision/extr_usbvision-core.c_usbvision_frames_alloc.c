
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bytes_per_pixel; } ;
struct usb_usbvision {int max_frame_size; int curwidth; int curheight; int num_frames; int fbuf_size; int stretch_width; int stretch_height; TYPE_2__* frame; scalar_t__ fbuf; int wait_stream; int wait_frame; int queue_lock; TYPE_1__ palette; } ;
struct TYPE_4__ {int index; int width; int height; scalar_t__ bytes_read; scalar_t__ data; int grabstate; } ;


 int DBG_FUNC ;
 int PAGE_ALIGN (int) ;
 int PDEBUG (int ,char*,int,int) ;
 int frame_state_unused ;
 int init_waitqueue_head (int *) ;
 int spin_lock_init (int *) ;
 scalar_t__ usbvision_rvmalloc (int) ;

int usbvision_frames_alloc(struct usb_usbvision *usbvision, int number_of_frames)
{
 int i;


 usbvision->max_frame_size = PAGE_ALIGN(usbvision->curwidth *
      usbvision->curheight *
      usbvision->palette.bytes_per_pixel);


 usbvision->num_frames = number_of_frames;
 while (usbvision->num_frames > 0) {
  usbvision->fbuf_size = usbvision->num_frames * usbvision->max_frame_size;
  usbvision->fbuf = usbvision_rvmalloc(usbvision->fbuf_size);
  if (usbvision->fbuf)
   break;
  usbvision->num_frames--;
 }

 spin_lock_init(&usbvision->queue_lock);
 init_waitqueue_head(&usbvision->wait_frame);
 init_waitqueue_head(&usbvision->wait_stream);


 for (i = 0; i < usbvision->num_frames; i++) {
  usbvision->frame[i].index = i;
  usbvision->frame[i].grabstate = frame_state_unused;
  usbvision->frame[i].data = usbvision->fbuf +
   i * usbvision->max_frame_size;



  usbvision->stretch_width = 1;
  usbvision->stretch_height = 1;
  usbvision->frame[i].width = usbvision->curwidth;
  usbvision->frame[i].height = usbvision->curheight;
  usbvision->frame[i].bytes_read = 0;
 }
 PDEBUG(DBG_FUNC, "allocated %d frames (%d bytes per frame)",
   usbvision->num_frames, usbvision->max_frame_size);
 return usbvision->num_frames;
}
