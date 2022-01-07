
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {int dummy; } ;
struct usb_se401 {int user; int maxframesize; scalar_t__ fbuf; } ;
struct file {struct video_device* private_data; } ;


 int EBUSY ;
 int ENOMEM ;
 int SE401_NUMFRAMES ;
 int lock_kernel () ;
 scalar_t__ rvmalloc (int) ;
 int unlock_kernel () ;
 struct video_device* video_devdata (struct file*) ;

__attribute__((used)) static int se401_open(struct file *file)
{
 struct video_device *dev = video_devdata(file);
 struct usb_se401 *se401 = (struct usb_se401 *)dev;
 int err = 0;

 lock_kernel();
 if (se401->user) {
  unlock_kernel();
  return -EBUSY;
 }
 se401->fbuf = rvmalloc(se401->maxframesize * SE401_NUMFRAMES);
 if (se401->fbuf)
  file->private_data = dev;
 else
  err = -ENOMEM;
 se401->user = !err;
 unlock_kernel();

 return err;
}
