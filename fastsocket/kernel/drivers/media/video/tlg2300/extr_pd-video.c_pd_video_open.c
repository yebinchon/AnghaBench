
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct videobuf_buffer {int dummy; } ;
struct video_device {scalar_t__ vfl_type; } ;
struct TYPE_4__ {int users; struct front_face* front; } ;
struct TYPE_3__ {int users; int context; } ;
struct poseidon {int state; int lock; int interface; int kref; TYPE_2__ vbi_data; TYPE_1__ video_data; int cur_transfer_mode; } ;
struct front_face {int queue_lock; int active; int * curr_frame; struct poseidon* pd; int q; void* type; } ;
struct file {struct front_face* private_data; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int POSEIDON_STATE_ANALOG ;
 int POSEIDON_STATE_VBI ;
 void* V4L2_BUF_TYPE_VBI_CAPTURE ;
 void* V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_FIELD_INTERLACED ;
 int V4L2_FIELD_NONE ;
 scalar_t__ VFL_TYPE_GRABBER ;
 scalar_t__ VFL_TYPE_VBI ;
 int debug_mode ;
 int init_video_context (int *) ;
 int kfree (struct front_face*) ;
 int kref_get (int *) ;
 struct front_face* kzalloc (int,int ) ;
 int log (char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pd_video_checkmode (struct poseidon*) ;
 int pd_video_qops ;
 int set_debug_mode (struct video_device*,int ) ;
 int spin_lock_init (int *) ;
 int usb_autopm_get_interface (int ) ;
 int usb_autopm_put_interface (int ) ;
 int usb_transfer_mode ;
 struct video_device* video_devdata (struct file*) ;
 struct poseidon* video_get_drvdata (struct video_device*) ;
 int videobuf_queue_vmalloc_init (int *,int *,int *,int *,void*,int ,int,struct front_face*,int *) ;

__attribute__((used)) static int pd_video_open(struct file *file)
{
 struct video_device *vfd = video_devdata(file);
 struct poseidon *pd = video_get_drvdata(vfd);
 struct front_face *front = ((void*)0);
 int ret = -ENOMEM;

 mutex_lock(&pd->lock);
 usb_autopm_get_interface(pd->interface);

 if (vfd->vfl_type == VFL_TYPE_GRABBER
  && !(pd->state & POSEIDON_STATE_ANALOG)) {
  front = kzalloc(sizeof(struct front_face), GFP_KERNEL);
  if (!front)
   goto out;

  pd->cur_transfer_mode = usb_transfer_mode;
  init_video_context(&pd->video_data.context);

  ret = pd_video_checkmode(pd);
  if (ret < 0) {
   kfree(front);
   ret = -1;
   goto out;
  }

  pd->state |= POSEIDON_STATE_ANALOG;
  front->type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
  pd->video_data.users++;
  set_debug_mode(vfd, debug_mode);

  videobuf_queue_vmalloc_init(&front->q, &pd_video_qops,
    ((void*)0), &front->queue_lock,
    V4L2_BUF_TYPE_VIDEO_CAPTURE,
    V4L2_FIELD_INTERLACED,
    sizeof(struct videobuf_buffer),
    front, ((void*)0));
 } else if (vfd->vfl_type == VFL_TYPE_VBI
  && !(pd->state & POSEIDON_STATE_VBI)) {
  front = kzalloc(sizeof(struct front_face), GFP_KERNEL);
  if (!front)
   goto out;

  pd->state |= POSEIDON_STATE_VBI;
  front->type = V4L2_BUF_TYPE_VBI_CAPTURE;
  pd->vbi_data.front = front;
  pd->vbi_data.users++;

  videobuf_queue_vmalloc_init(&front->q, &pd_video_qops,
    ((void*)0), &front->queue_lock,
    V4L2_BUF_TYPE_VBI_CAPTURE,
    V4L2_FIELD_NONE,
    sizeof(struct videobuf_buffer),
    front, ((void*)0));
 } else {

  log("other ");
  ret = -EINVAL;
  goto out;
 }

 front->pd = pd;
 front->curr_frame = ((void*)0);
 INIT_LIST_HEAD(&front->active);
 spin_lock_init(&front->queue_lock);

 file->private_data = front;
 kref_get(&pd->kref);

 mutex_unlock(&pd->lock);
 return 0;
out:
 usb_autopm_put_interface(pd->interface);
 mutex_unlock(&pd->lock);
 return ret;
}
