
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uinput_request {size_t id; int done; } ;
struct uinput_device {int requests_waitq; int ** requests; } ;


 int complete (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void uinput_request_done(struct uinput_device *udev, struct uinput_request *request)
{

 udev->requests[request->id] = ((void*)0);
 wake_up(&udev->requests_waitq);

 complete(&request->done);
}
