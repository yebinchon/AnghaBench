
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct logger_reader {struct logger_reader* log; } ;
struct logger_log {struct logger_log* log; } ;
struct file {int f_mode; struct logger_reader* private_data; } ;


 int FMODE_READ ;

__attribute__((used)) static inline struct logger_log *file_get_log(struct file *file)
{
 if (file->f_mode & FMODE_READ) {
  struct logger_reader *reader = file->private_data;
  return reader->log;
 } else
  return file->private_data;
}
