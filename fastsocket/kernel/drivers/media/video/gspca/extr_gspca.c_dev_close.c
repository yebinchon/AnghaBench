
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gspca_dev {int queue_lock; int module; int usb_lock; scalar_t__ usb_err; scalar_t__ streaming; struct file* capt_file; } ;
struct file {struct gspca_dev* private_data; } ;
struct TYPE_2__ {int comm; } ;


 int D_STREAM ;
 int ERESTARTSYS ;
 int PDEBUG (int ,char*,...) ;
 TYPE_1__* current ;
 int frame_free (struct gspca_dev*) ;
 int gspca_stream_off (struct gspca_dev*) ;
 int module_put (int ) ;
 int mutex_lock (int *) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int dev_close(struct file *file)
{
 struct gspca_dev *gspca_dev = file->private_data;

 PDEBUG(D_STREAM, "[%s] close", current->comm);
 if (mutex_lock_interruptible(&gspca_dev->queue_lock))
  return -ERESTARTSYS;


 if (gspca_dev->capt_file == file) {
  if (gspca_dev->streaming) {
   mutex_lock(&gspca_dev->usb_lock);
   gspca_dev->usb_err = 0;
   gspca_stream_off(gspca_dev);
   mutex_unlock(&gspca_dev->usb_lock);
  }
  frame_free(gspca_dev);
 }
 file->private_data = ((void*)0);
 module_put(gspca_dev->module);
 mutex_unlock(&gspca_dev->queue_lock);

 PDEBUG(D_STREAM, "close done");

 return 0;
}
