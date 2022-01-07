
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evdev_client {int dummy; } ;
struct evdev {scalar_t__ grab; int handle; } ;


 int EBUSY ;
 int input_grab_device (int *) ;
 int rcu_assign_pointer (scalar_t__,struct evdev_client*) ;
 int synchronize_rcu () ;

__attribute__((used)) static int evdev_grab(struct evdev *evdev, struct evdev_client *client)
{
 int error;

 if (evdev->grab)
  return -EBUSY;

 error = input_grab_device(&evdev->handle);
 if (error)
  return error;

 rcu_assign_pointer(evdev->grab, client);
 synchronize_rcu();

 return 0;
}
