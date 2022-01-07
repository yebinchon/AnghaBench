
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hid_debug_list {scalar_t__ head; scalar_t__ tail; TYPE_1__* hdev; } ;
struct file {struct hid_debug_list* private_data; } ;
typedef int poll_table ;
struct TYPE_2__ {int debug; int debug_wait; } ;


 unsigned int POLLERR ;
 unsigned int POLLHUP ;
 unsigned int POLLIN ;
 unsigned int POLLRDNORM ;
 int poll_wait (struct file*,int *,int *) ;

__attribute__((used)) static unsigned int hid_debug_events_poll(struct file *file, poll_table *wait)
{
 struct hid_debug_list *list = file->private_data;

 poll_wait(file, &list->hdev->debug_wait, wait);
 if (list->head != list->tail)
  return POLLIN | POLLRDNORM;
 if (!list->hdev->debug)
  return POLLERR | POLLHUP;
 return 0;
}
