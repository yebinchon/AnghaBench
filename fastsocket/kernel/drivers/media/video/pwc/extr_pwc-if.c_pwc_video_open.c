
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct video_device {int dummy; } ;
struct pwc_device {int usb_init; size_t vsize; int vframes; int type; int modlock; scalar_t__ vopen; int vcompression; scalar_t__ vsnapshot; scalar_t__ error_status; scalar_t__ visoc_errors; scalar_t__ vframes_error; scalar_t__ vframes_dumped; scalar_t__ vframe_count; scalar_t__* image_used; TYPE_1__* vdev; } ;
struct file {struct video_device* private_data; } ;
struct TYPE_4__ {int y; int x; } ;
struct TYPE_3__ {int name; } ;


 int BUG_ON (int) ;
 int EBUSY ;
 unsigned int PSZ_QCIF ;
 unsigned int PSZ_QSIF ;
 int PWC_DEBUG_OPEN (char*,...) ;
 int led_off ;
 int led_on ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ power_save ;
 int pwc_allocate_buffers (struct pwc_device*) ;
 int pwc_camera_power (struct pwc_device*,int) ;
 int pwc_construct (struct pwc_device*) ;
 int pwc_free_buffers (struct pwc_device*) ;
 int pwc_get_cmos_sensor (struct pwc_device*,int*) ;
 TYPE_2__* pwc_image_sizes ;
 int pwc_mbufs ;
 int pwc_reset_buffers (struct pwc_device*) ;
 int pwc_sensor_type_to_string (int) ;
 int pwc_set_agc (struct pwc_device*,int,int ) ;
 int pwc_set_brightness (struct pwc_device*,int) ;
 scalar_t__ pwc_set_leds (struct pwc_device*,int ,int ) ;
 int pwc_set_video_mode (struct pwc_device*,int ,int ,int,int ,int ) ;
 struct video_device* video_devdata (struct file*) ;
 struct pwc_device* video_get_drvdata (struct video_device*) ;

__attribute__((used)) static int pwc_video_open(struct file *file)
{
 int i, ret;
 struct video_device *vdev = video_devdata(file);
 struct pwc_device *pdev;

 PWC_DEBUG_OPEN(">> video_open called(vdev = 0x%p).\n", vdev);

 pdev = video_get_drvdata(vdev);
 BUG_ON(!pdev);
 if (pdev->vopen) {
  PWC_DEBUG_OPEN("I'm busy, someone is using the device.\n");
  return -EBUSY;
 }

 mutex_lock(&pdev->modlock);
 pwc_construct(pdev);
 if (!pdev->usb_init) {
  PWC_DEBUG_OPEN("Doing first time initialization.\n");
  pdev->usb_init = 1;


  ret = pwc_get_cmos_sensor(pdev, &i);
  if (ret >= 0)
  {
   PWC_DEBUG_OPEN("This %s camera is equipped with a %s (%d).\n",
     pdev->vdev->name,
     pwc_sensor_type_to_string(i), i);
  }
 }


 if (power_save) {
  i = pwc_camera_power(pdev, 1);
  if (i < 0)
   PWC_DEBUG_OPEN("Failed to restore power to the camera! (%d)\n", i);
 }

 if (pwc_set_leds(pdev, led_on, led_off) < 0)
  PWC_DEBUG_OPEN("Failed to set LED on/off time.\n");



 i = pwc_allocate_buffers(pdev);
 if (i < 0) {
  PWC_DEBUG_OPEN("Failed to allocate buffers memory.\n");
  pwc_free_buffers(pdev);
  mutex_unlock(&pdev->modlock);
  return i;
 }


 pwc_reset_buffers(pdev);
 for (i = 0; i < pwc_mbufs; i++)
  pdev->image_used[i] = 0;
 pdev->vframe_count = 0;
 pdev->vframes_dumped = 0;
 pdev->vframes_error = 0;
 pdev->visoc_errors = 0;
 pdev->error_status = 0;
 pwc_construct(pdev);


 pdev->vsnapshot = 0;





 i = pwc_set_video_mode(pdev, pwc_image_sizes[pdev->vsize].x, pwc_image_sizes[pdev->vsize].y, pdev->vframes, pdev->vcompression, 0);
 if (i) {
  unsigned int default_resolution;
  PWC_DEBUG_OPEN("First attempt at set_video_mode failed.\n");
  if (pdev->type>= 730)
   default_resolution = PSZ_QSIF;
  else
   default_resolution = PSZ_QCIF;

  i = pwc_set_video_mode(pdev,
           pwc_image_sizes[default_resolution].x,
           pwc_image_sizes[default_resolution].y,
           10,
           pdev->vcompression,
           0);
 }
 if (i) {
  PWC_DEBUG_OPEN("Second attempt at set_video_mode failed.\n");
  pwc_free_buffers(pdev);
  mutex_unlock(&pdev->modlock);
  return i;
 }


 pwc_set_brightness(pdev, 0x7fff);
 pwc_set_agc(pdev, 1, 0);

 pdev->vopen++;
 file->private_data = vdev;
 mutex_unlock(&pdev->modlock);
 PWC_DEBUG_OPEN("<< video_open() returns 0.\n");
 return 0;
}
