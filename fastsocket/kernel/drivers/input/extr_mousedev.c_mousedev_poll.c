
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mousedev_client {scalar_t__ buffer; scalar_t__ ready; struct mousedev* mousedev; } ;
struct mousedev {scalar_t__ exist; int wait; } ;
struct file {struct mousedev_client* private_data; } ;
typedef int poll_table ;


 unsigned int POLLERR ;
 unsigned int POLLHUP ;
 unsigned int POLLIN ;
 unsigned int POLLRDNORM ;
 int poll_wait (struct file*,int *,int *) ;

__attribute__((used)) static unsigned int mousedev_poll(struct file *file, poll_table *wait)
{
 struct mousedev_client *client = file->private_data;
 struct mousedev *mousedev = client->mousedev;

 poll_wait(file, &mousedev->wait, wait);
 return ((client->ready || client->buffer) ? (POLLIN | POLLRDNORM) : 0) |
  (mousedev->exist ? 0 : (POLLHUP | POLLERR));
}
