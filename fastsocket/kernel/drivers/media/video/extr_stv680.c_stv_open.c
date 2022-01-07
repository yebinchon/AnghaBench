
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {int dummy; } ;
struct usb_stv {int user; int maxframesize; int fbuf; } ;
struct file {struct video_device* private_data; } ;


 int ENOMEM ;
 int PDEBUG (int ,char*) ;
 int STV680_NUMFRAMES ;
 int lock_kernel () ;
 int rvmalloc (int) ;
 int stv_init (struct usb_stv*) ;
 int unlock_kernel () ;
 struct video_device* video_devdata (struct file*) ;
 struct usb_stv* video_get_drvdata (struct video_device*) ;

__attribute__((used)) static int stv_open(struct file *file)
{
 struct video_device *dev = video_devdata(file);
 struct usb_stv *stv680 = video_get_drvdata(dev);
 int err = 0;


 lock_kernel();
 stv680->user = 1;
 err = stv_init (stv680);

 if (err >= 0) {
  stv680->fbuf = rvmalloc (stv680->maxframesize * STV680_NUMFRAMES);
  if (!stv680->fbuf) {
   PDEBUG (0, "STV(e): Could not rvmalloc frame bufer");
   err = -ENOMEM;
  }
  file->private_data = dev;
 }
 if (err)
  stv680->user = 0;
 unlock_kernel();

 return err;
}
