
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio_raw_list {int fasync; } ;
struct file {struct serio_raw_list* private_data; } ;


 int fasync_helper (int,struct file*,int,int *) ;

__attribute__((used)) static int serio_raw_fasync(int fd, struct file *file, int on)
{
 struct serio_raw_list *list = file->private_data;

 return fasync_helper(fd, file, on, &list->fasync);
}
