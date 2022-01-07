
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct logger_reader {int list; } ;
struct inode {int dummy; } ;
struct file {int f_mode; struct logger_reader* private_data; } ;


 int FMODE_READ ;
 int kfree (struct logger_reader*) ;
 int list_del (int *) ;

__attribute__((used)) static int logger_release(struct inode *ignored, struct file *file)
{
 if (file->f_mode & FMODE_READ) {
  struct logger_reader *reader = file->private_data;
  list_del(&reader->list);
  kfree(reader);
 }

 return 0;
}
