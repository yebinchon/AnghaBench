
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vicam_camera {int open_count; int cam_lock; struct usb_device* udev; struct vicam_camera* cntrlbuf; int framebuf; struct vicam_camera* raw_image; } ;
struct usb_device {int dummy; } ;
struct file {struct vicam_camera* private_data; } ;


 int DBG (char*) ;
 int VICAM_FRAMES ;
 int VICAM_MAX_FRAME_SIZE ;
 int kfree (struct vicam_camera*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rvfree (int ,int) ;
 int set_camera_power (struct vicam_camera*,int ) ;

__attribute__((used)) static int
vicam_close(struct file *file)
{
 struct vicam_camera *cam = file->private_data;
 int open_count;
 struct usb_device *udev;

 DBG("close\n");





 set_camera_power(cam, 0);

 kfree(cam->raw_image);
 rvfree(cam->framebuf, VICAM_MAX_FRAME_SIZE * VICAM_FRAMES);
 kfree(cam->cntrlbuf);

 mutex_lock(&cam->cam_lock);

 cam->open_count--;
 open_count = cam->open_count;
 udev = cam->udev;

 mutex_unlock(&cam->cam_lock);

 if (!open_count && !udev) {
  kfree(cam);
 }

 return 0;
}
