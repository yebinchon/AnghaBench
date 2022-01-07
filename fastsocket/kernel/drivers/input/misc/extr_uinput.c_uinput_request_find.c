
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uinput_request {int dummy; } ;
struct uinput_device {struct uinput_request** requests; } ;


 int UINPUT_NUM_REQUESTS ;

__attribute__((used)) static struct uinput_request *uinput_request_find(struct uinput_device *udev, int id)
{

 if (id >= UINPUT_NUM_REQUESTS || id < 0)
  return ((void*)0);

 return udev->requests[id];
}
