
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tape_request {int rc; int * callback; int * callback_data; } ;
struct tape_device {int wait_queue; int cdev; } ;


 int __tape_start_request (struct tape_device*,struct tape_request*) ;
 int * __tape_wake_up ;
 int get_ccwdev_lock (int ) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;
 int wait_event (int ,int ) ;

int
tape_do_io(struct tape_device *device, struct tape_request *request)
{
 int rc;

 spin_lock_irq(get_ccwdev_lock(device->cdev));

 request->callback = __tape_wake_up;
 request->callback_data = &device->wait_queue;

 rc = __tape_start_request(device, request);
 spin_unlock_irq(get_ccwdev_lock(device->cdev));
 if (rc)
  return rc;

 wait_event(device->wait_queue, (request->callback == ((void*)0)));

 return request->rc;
}
