
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int queue_lock; } ;
struct file {int dummy; } ;
typedef enum v4l2_memory { ____Placeholder_v4l2_memory } v4l2_memory ;


 int ERESTARTSYS ;
 int frame_ready_nolock (struct gspca_dev*,struct file*,int) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int frame_ready(struct gspca_dev *gspca_dev, struct file *file,
   enum v4l2_memory memory)
{
 int ret;

 if (mutex_lock_interruptible(&gspca_dev->queue_lock))
  return -ERESTARTSYS;
 ret = frame_ready_nolock(gspca_dev, file, memory);
 mutex_unlock(&gspca_dev->queue_lock);
 return ret;
}
