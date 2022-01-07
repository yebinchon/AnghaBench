
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tape_request {int rc; int * callback; int * callback_data; } ;
struct tape_device {int cdev_id; int wait_queue; int cdev; } ;


 int DBF_EVENT (int,char*,int ) ;
 int ERESTARTSYS ;
 int __tape_cancel_io (struct tape_device*,struct tape_request*) ;
 int __tape_start_request (struct tape_device*,struct tape_request*) ;
 int * __tape_wake_up_interruptible ;
 int get_ccwdev_lock (int ) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;
 int wait_event_interruptible (int ,int ) ;

int
tape_do_io_interruptible(struct tape_device *device,
    struct tape_request *request)
{
 int rc;

 spin_lock_irq(get_ccwdev_lock(device->cdev));

 request->callback = __tape_wake_up_interruptible;
 request->callback_data = &device->wait_queue;
 rc = __tape_start_request(device, request);
 spin_unlock_irq(get_ccwdev_lock(device->cdev));
 if (rc)
  return rc;

 rc = wait_event_interruptible(device->wait_queue,
          (request->callback == ((void*)0)));
 if (rc != -ERESTARTSYS)

  return request->rc;


 spin_lock_irq(get_ccwdev_lock(device->cdev));
 rc = __tape_cancel_io(device, request);
 spin_unlock_irq(get_ccwdev_lock(device->cdev));
 if (rc == 0) {

  do {
   rc = wait_event_interruptible(
    device->wait_queue,
    (request->callback == ((void*)0))
   );
  } while (rc == -ERESTARTSYS);

  DBF_EVENT(3, "IO stopped on %08x\n", device->cdev_id);
  rc = -ERESTARTSYS;
 }
 return rc;
}
