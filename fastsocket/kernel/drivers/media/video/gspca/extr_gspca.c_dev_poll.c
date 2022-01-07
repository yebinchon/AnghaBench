
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {scalar_t__ memory; scalar_t__ fr_o; int present; int queue_lock; int fr_i; int wq; } ;
struct file {struct gspca_dev* private_data; } ;
typedef int poll_table ;


 int D_FRAM ;
 scalar_t__ GSPCA_MEMORY_NO ;
 int PDEBUG (int ,char*) ;
 unsigned int POLLERR ;
 unsigned int POLLHUP ;
 int POLLIN ;
 int POLLRDNORM ;
 scalar_t__ atomic_read (int *) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int poll_wait (struct file*,int *,int *) ;
 int read_alloc (struct gspca_dev*,struct file*) ;

__attribute__((used)) static unsigned int dev_poll(struct file *file, poll_table *wait)
{
 struct gspca_dev *gspca_dev = file->private_data;
 int ret;

 PDEBUG(D_FRAM, "poll");

 poll_wait(file, &gspca_dev->wq, wait);


 if (gspca_dev->memory == GSPCA_MEMORY_NO) {
  ret = read_alloc(gspca_dev, file);
  if (ret != 0)
   return POLLERR;
 }

 if (mutex_lock_interruptible(&gspca_dev->queue_lock) != 0)
  return POLLERR;


 if (gspca_dev->fr_o != atomic_read(&gspca_dev->fr_i))
  ret = POLLIN | POLLRDNORM;
 else
  ret = 0;
 mutex_unlock(&gspca_dev->queue_lock);
 if (!gspca_dev->present)
  return POLLHUP;
 return ret;
}
