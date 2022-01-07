
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct video_device {int dummy; } ;
struct pwc_device {int vframe_count; int modlock; struct video_device* vopen; int unplugged; int type; int vframes_error; int vframes_dumped; } ;
struct file {struct video_device* private_data; } ;
struct TYPE_2__ {struct pwc_device* pdev; } ;


 scalar_t__ DEVICE_USE_CODEC1 (int ) ;
 int MAX_DEV_HINTS ;
 int PWC_DEBUG_MODULE (char*,...) ;
 int PWC_DEBUG_OPEN (char*,struct video_device*) ;
 int PWC_ERROR (char*,int) ;
 TYPE_1__* device_hint ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ power_save ;
 int pwc_camera_power (struct pwc_device*,int ) ;
 int pwc_cleanup (struct pwc_device*) ;
 int pwc_dec1_exit () ;
 int pwc_dec23_exit () ;
 int pwc_free_buffers (struct pwc_device*) ;
 int pwc_isoc_cleanup (struct pwc_device*) ;
 scalar_t__ pwc_set_leds (struct pwc_device*,int ,int ) ;
 struct pwc_device* video_get_drvdata (struct video_device*) ;

__attribute__((used)) static int pwc_video_close(struct file *file)
{
 struct video_device *vdev = file->private_data;
 struct pwc_device *pdev;
 int i, hint;

 PWC_DEBUG_OPEN(">> video_close called(vdev = 0x%p).\n", vdev);

 pdev = video_get_drvdata(vdev);
 mutex_lock(&pdev->modlock);
 if (pdev->vopen == 0)
  PWC_DEBUG_MODULE("video_close() called on closed device?\n");





 if (pdev->vframe_count > 20)
  PWC_DEBUG_MODULE("Closing video device: %d frames received, dumped %d frames, %d frames with errors.\n", pdev->vframe_count, pdev->vframes_dumped, pdev->vframes_error);

 if (DEVICE_USE_CODEC1(pdev->type))
     pwc_dec1_exit();
 else
     pwc_dec23_exit();

 pwc_isoc_cleanup(pdev);
 pwc_free_buffers(pdev);


 if (!pdev->unplugged) {

  if (pwc_set_leds(pdev, 0, 0) < 0)
   PWC_DEBUG_MODULE("Failed to set LED on/off time.\n");
  if (power_save) {
   i = pwc_camera_power(pdev, 0);
   if (i < 0)
    PWC_ERROR("Failed to power down camera (%d)\n", i);
  }
  pdev->vopen--;
  PWC_DEBUG_OPEN("<< video_close() vopen=%d\n", pdev->vopen);
 } else {
  pwc_cleanup(pdev);

  for (hint = 0; hint < MAX_DEV_HINTS; hint++)
   if (device_hint[hint].pdev == pdev)
    device_hint[hint].pdev = ((void*)0);
 }
 mutex_unlock(&pdev->modlock);

 return 0;
}
