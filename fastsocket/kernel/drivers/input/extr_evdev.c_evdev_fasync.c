
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {struct evdev_client* private_data; } ;
struct evdev_client {int fasync; } ;


 int fasync_helper (int,struct file*,int,int *) ;

__attribute__((used)) static int evdev_fasync(int fd, struct file *file, int on)
{
 struct evdev_client *client = file->private_data;

 return fasync_helper(fd, file, on, &client->fasync);
}
