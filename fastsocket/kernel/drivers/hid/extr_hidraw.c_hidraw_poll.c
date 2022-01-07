
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hidraw_list {scalar_t__ head; scalar_t__ tail; TYPE_1__* hidraw; } ;
struct file {struct hidraw_list* private_data; } ;
typedef int poll_table ;
struct TYPE_2__ {int exist; int wait; } ;


 unsigned int POLLERR ;
 unsigned int POLLHUP ;
 unsigned int POLLIN ;
 unsigned int POLLRDNORM ;
 int poll_wait (struct file*,int *,int *) ;

__attribute__((used)) static unsigned int hidraw_poll(struct file *file, poll_table *wait)
{
 struct hidraw_list *list = file->private_data;

 poll_wait(file, &list->hidraw->wait, wait);
 if (list->head != list->tail)
  return POLLIN | POLLRDNORM;
 if (!list->hidraw->exist)
  return POLLERR | POLLHUP;
 return 0;
}
