
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {struct evdev_client* private_data; } ;
struct evdev_client {scalar_t__ head; scalar_t__ tail; struct evdev* evdev; } ;
struct evdev {scalar_t__ exist; int wait; } ;
typedef int poll_table ;


 unsigned int POLLERR ;
 unsigned int POLLHUP ;
 unsigned int POLLIN ;
 unsigned int POLLRDNORM ;
 int poll_wait (struct file*,int *,int *) ;

__attribute__((used)) static unsigned int evdev_poll(struct file *file, poll_table *wait)
{
 struct evdev_client *client = file->private_data;
 struct evdev *evdev = client->evdev;

 poll_wait(file, &evdev->wait, wait);
 return ((client->head == client->tail) ? 0 : (POLLIN | POLLRDNORM)) |
  (evdev->exist ? 0 : (POLLHUP | POLLERR));
}
