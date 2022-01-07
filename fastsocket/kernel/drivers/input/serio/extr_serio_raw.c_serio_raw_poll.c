
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct serio_raw_list {TYPE_1__* serio_raw; } ;
struct file {struct serio_raw_list* private_data; } ;
typedef int poll_table ;
struct TYPE_2__ {scalar_t__ head; scalar_t__ tail; int wait; } ;


 unsigned int POLLIN ;
 unsigned int POLLRDNORM ;
 int poll_wait (struct file*,int *,int *) ;

__attribute__((used)) static unsigned int serio_raw_poll(struct file *file, poll_table *wait)
{
 struct serio_raw_list *list = file->private_data;

 poll_wait(file, &list->serio_raw->wait, wait);

 if (list->serio_raw->head != list->serio_raw->tail)
  return POLLIN | POLLRDNORM;

 return 0;
}
