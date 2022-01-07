
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct logger_reader {scalar_t__ r_off; struct logger_log* log; } ;
struct logger_log {scalar_t__ w_off; int mutex; int wq; } ;
struct file {int f_mode; struct logger_reader* private_data; } ;
typedef int poll_table ;


 int FMODE_READ ;
 unsigned int POLLIN ;
 unsigned int POLLOUT ;
 unsigned int POLLRDNORM ;
 unsigned int POLLWRNORM ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int poll_wait (struct file*,int *,int *) ;

__attribute__((used)) static unsigned int logger_poll(struct file *file, poll_table *wait)
{
 struct logger_reader *reader;
 struct logger_log *log;
 unsigned int ret = POLLOUT | POLLWRNORM;

 if (!(file->f_mode & FMODE_READ))
  return ret;

 reader = file->private_data;
 log = reader->log;

 poll_wait(file, &log->wq, wait);

 mutex_lock(&log->mutex);
 if (log->w_off != reader->r_off)
  ret |= POLLIN | POLLRDNORM;
 mutex_unlock(&log->mutex);

 return ret;
}
