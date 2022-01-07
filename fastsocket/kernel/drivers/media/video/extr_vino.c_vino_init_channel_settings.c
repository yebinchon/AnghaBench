
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int frame_wait_queue; int queue_lock; int queue_mutex; } ;
struct vino_channel_settings {unsigned int channel; int decimation; TYPE_3__* vdev; TYPE_1__ fb_queue; int capture_lock; int mutex; scalar_t__ capturing; int data_norm; int data_format; scalar_t__ users; scalar_t__ alpha; int input; } ;
struct video_device {int dummy; } ;
struct TYPE_8__ {int * v4l2_dev; int release; int name; } ;
struct TYPE_7__ {int v4l2_dev; } ;


 int ENOMEM ;
 int VINO_DATA_FMT_GREY ;
 int VINO_DATA_NORM_NTSC ;
 int VINO_INPUT_NONE ;
 int init_waitqueue_head (int *) ;
 int memcpy (TYPE_3__*,int *,int) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;
 int strcpy (int ,char const*) ;
 int vdev_template ;
 TYPE_3__* video_device_alloc () ;
 int video_device_release ;
 int video_set_drvdata (TYPE_3__*,struct vino_channel_settings*) ;
 TYPE_2__* vino_drvdata ;
 int vino_init_stage ;
 int vino_module_cleanup (int ) ;
 int vino_set_default_clipping (struct vino_channel_settings*) ;
 int vino_set_default_framerate (struct vino_channel_settings*) ;

__attribute__((used)) static int vino_init_channel_settings(struct vino_channel_settings *vcs,
     unsigned int channel, const char *name)
{
 vcs->channel = channel;
 vcs->input = VINO_INPUT_NONE;
 vcs->alpha = 0;
 vcs->users = 0;
 vcs->data_format = VINO_DATA_FMT_GREY;
 vcs->data_norm = VINO_DATA_NORM_NTSC;
 vcs->decimation = 1;
 vino_set_default_clipping(vcs);
 vino_set_default_framerate(vcs);

 vcs->capturing = 0;

 mutex_init(&vcs->mutex);
 spin_lock_init(&vcs->capture_lock);

 mutex_init(&vcs->fb_queue.queue_mutex);
 spin_lock_init(&vcs->fb_queue.queue_lock);
 init_waitqueue_head(&vcs->fb_queue.frame_wait_queue);

 vcs->vdev = video_device_alloc();
 if (!vcs->vdev) {
  vino_module_cleanup(vino_init_stage);
  return -ENOMEM;
 }
 vino_init_stage++;

 memcpy(vcs->vdev, &vdev_template,
        sizeof(struct video_device));
 strcpy(vcs->vdev->name, name);
 vcs->vdev->release = video_device_release;
 vcs->vdev->v4l2_dev = &vino_drvdata->v4l2_dev;

 video_set_drvdata(vcs->vdev, vcs);

 return 0;
}
