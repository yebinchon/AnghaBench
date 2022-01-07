
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {struct client* private_data; } ;
struct client {int event_list; int device; int wait; } ;
typedef int poll_table ;


 unsigned int POLLERR ;
 unsigned int POLLHUP ;
 unsigned int POLLIN ;
 unsigned int POLLRDNORM ;
 scalar_t__ fw_device_is_shutdown (int ) ;
 int list_empty (int *) ;
 int poll_wait (struct file*,int *,int *) ;

__attribute__((used)) static unsigned int fw_device_op_poll(struct file *file, poll_table * pt)
{
 struct client *client = file->private_data;
 unsigned int mask = 0;

 poll_wait(file, &client->wait, pt);

 if (fw_device_is_shutdown(client->device))
  mask |= POLLHUP | POLLERR;
 if (!list_empty(&client->event_list))
  mask |= POLLIN | POLLRDNORM;

 return mask;
}
