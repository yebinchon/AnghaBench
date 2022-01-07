
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evdev_client {int dummy; } ;
struct evdev {int handle; struct evdev_client* grab; } ;


 int EINVAL ;
 int input_release_device (int *) ;
 int rcu_assign_pointer (struct evdev_client*,int *) ;
 int synchronize_rcu () ;

__attribute__((used)) static int evdev_ungrab(struct evdev *evdev, struct evdev_client *client)
{
 if (evdev->grab != client)
  return -EINVAL;

 rcu_assign_pointer(evdev->grab, ((void*)0));
 synchronize_rcu();
 input_release_device(&evdev->handle);

 return 0;
}
