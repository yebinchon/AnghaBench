
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stk_camera {int interface; struct file* owner; } ;
struct file {struct stk_camera* private_data; } ;


 scalar_t__ is_present (struct stk_camera*) ;
 int stk_free_buffers (struct stk_camera*) ;
 int stk_stop_stream (struct stk_camera*) ;
 int usb_autopm_put_interface (int ) ;

__attribute__((used)) static int v4l_stk_release(struct file *fp)
{
 struct stk_camera *dev = fp->private_data;

 if (dev->owner == fp) {
  stk_stop_stream(dev);
  stk_free_buffers(dev);
  dev->owner = ((void*)0);
 }

 if(is_present(dev))
  usb_autopm_put_interface(dev->interface);

 return 0;
}
