
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uinput_request {int id; } ;
struct uinput_device {int requests_lock; struct uinput_request** requests; } ;


 int UINPUT_NUM_REQUESTS ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int uinput_request_alloc_id(struct uinput_device *udev, struct uinput_request *request)
{
 int id;
 int err = -1;

 spin_lock(&udev->requests_lock);

 for (id = 0; id < UINPUT_NUM_REQUESTS; id++) {
  if (!udev->requests[id]) {
   request->id = id;
   udev->requests[id] = request;
   err = 0;
   break;
  }
 }

 spin_unlock(&udev->requests_lock);
 return err;
}
