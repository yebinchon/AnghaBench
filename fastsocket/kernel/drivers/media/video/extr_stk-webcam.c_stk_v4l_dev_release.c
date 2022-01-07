
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {int dummy; } ;
struct stk_camera {int interface; int * isobufs; int * sio_bufs; } ;


 int STK_ERROR (char*) ;
 int kfree (struct stk_camera*) ;
 int usb_put_intf (int ) ;
 struct stk_camera* vdev_to_camera (struct video_device*) ;

__attribute__((used)) static void stk_v4l_dev_release(struct video_device *vd)
{
 struct stk_camera *dev = vdev_to_camera(vd);

 if (dev->sio_bufs != ((void*)0) || dev->isobufs != ((void*)0))
  STK_ERROR("We are leaking memory\n");
 usb_put_intf(dev->interface);
 kfree(dev);
}
