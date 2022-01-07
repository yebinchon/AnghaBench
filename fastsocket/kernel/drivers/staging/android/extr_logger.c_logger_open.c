
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct logger_reader {int mutex; int readers; int list; int head; int r_off; struct logger_reader* log; } ;
struct logger_log {int mutex; int readers; int list; int head; int r_off; struct logger_log* log; } ;
struct inode {int i_rdev; } ;
struct file {int f_mode; struct logger_reader* private_data; } ;


 int ENODEV ;
 int ENOMEM ;
 int FMODE_READ ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int MINOR (int ) ;
 struct logger_reader* get_log_from_minor (int ) ;
 struct logger_reader* kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nonseekable_open (struct inode*,struct file*) ;

__attribute__((used)) static int logger_open(struct inode *inode, struct file *file)
{
 struct logger_log *log;
 int ret;

 ret = nonseekable_open(inode, file);
 if (ret)
  return ret;

 log = get_log_from_minor(MINOR(inode->i_rdev));
 if (!log)
  return -ENODEV;

 if (file->f_mode & FMODE_READ) {
  struct logger_reader *reader;

  reader = kmalloc(sizeof(struct logger_reader), GFP_KERNEL);
  if (!reader)
   return -ENOMEM;

  reader->log = log;
  INIT_LIST_HEAD(&reader->list);

  mutex_lock(&log->mutex);
  reader->r_off = log->head;
  list_add_tail(&reader->list, &log->readers);
  mutex_unlock(&log->mutex);

  file->private_data = reader;
 } else
  file->private_data = log;

 return 0;
}
