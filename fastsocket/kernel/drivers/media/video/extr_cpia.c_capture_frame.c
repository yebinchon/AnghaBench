
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct video_mmap {size_t frame; } ;
struct cam_data {size_t curframe; TYPE_1__* frame; int frame_buf; } ;
struct TYPE_2__ {int state; } ;


 int FRAME_READY ;
 int allocate_frame_buf (struct cam_data*) ;
 int fetch_frame (struct cam_data*) ;

__attribute__((used)) static int capture_frame(struct cam_data *cam, struct video_mmap *vm)
{
 if (!cam->frame_buf) {

  int err;
  if ((err = allocate_frame_buf(cam)))
   return err;
 }

 cam->curframe = vm->frame;
 cam->frame[cam->curframe].state = FRAME_READY;
 return fetch_frame(cam);
}
