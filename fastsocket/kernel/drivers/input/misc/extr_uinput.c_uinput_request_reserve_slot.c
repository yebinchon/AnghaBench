
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uinput_request {int dummy; } ;
struct uinput_device {int requests_waitq; } ;


 int uinput_request_alloc_id (struct uinput_device*,struct uinput_request*) ;
 int wait_event_interruptible (int ,int) ;

__attribute__((used)) static inline int uinput_request_reserve_slot(struct uinput_device *udev, struct uinput_request *request)
{

 return wait_event_interruptible(udev->requests_waitq,
     !uinput_request_alloc_id(udev, request));
}
