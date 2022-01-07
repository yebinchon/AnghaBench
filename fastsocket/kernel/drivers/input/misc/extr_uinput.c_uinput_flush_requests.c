
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uinput_request {int retval; } ;
struct uinput_device {int requests_lock; struct uinput_request** requests; } ;


 int ENODEV ;
 int UINPUT_NUM_REQUESTS ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int uinput_request_done (struct uinput_device*,struct uinput_request*) ;

__attribute__((used)) static void uinput_flush_requests(struct uinput_device *udev)
{
 struct uinput_request *request;
 int i;

 spin_lock(&udev->requests_lock);

 for (i = 0; i < UINPUT_NUM_REQUESTS; i++) {
  request = udev->requests[i];
  if (request) {
   request->retval = -ENODEV;
   uinput_request_done(udev, request);
  }
 }

 spin_unlock(&udev->requests_lock);
}
