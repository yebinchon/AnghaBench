
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {int dummy; } ;
struct stk_camera {int interface; } ;
struct file {struct stk_camera* private_data; } ;


 int ENXIO ;
 int is_present (struct stk_camera*) ;
 int usb_autopm_get_interface (int ) ;
 struct stk_camera* vdev_to_camera (struct video_device*) ;
 struct video_device* video_devdata (struct file*) ;

__attribute__((used)) static int v4l_stk_open(struct file *fp)
{
 struct stk_camera *dev;
 struct video_device *vdev;

 vdev = video_devdata(fp);
 dev = vdev_to_camera(vdev);

 if (dev == ((void*)0) || !is_present(dev)) {
  return -ENXIO;
 }
 fp->private_data = dev;
 usb_autopm_get_interface(dev->interface);

 return 0;
}
