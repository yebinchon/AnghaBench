
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r592_device {int dummy; } ;
struct memstick_host {int dummy; } ;
typedef enum memstick_param { ____Placeholder_memstick_param } memstick_param ;


 int EINVAL ;






 struct r592_device* memstick_priv (struct memstick_host*) ;
 int r592_enable_device (struct r592_device*,int) ;
 int r592_set_mode (struct r592_device*,int) ;

__attribute__((used)) static int r592_set_param(struct memstick_host *host,
   enum memstick_param param, int value)
{
 struct r592_device *dev = memstick_priv(host);

 switch (param) {
 case 131:
  switch (value) {
  case 129:
   return r592_enable_device(dev, 1);
  case 130:
   return r592_enable_device(dev, 0);
  default:
   return -EINVAL;
  }
 case 133:
  switch (value) {
  case 128:
   return r592_set_mode(dev, 0);
  case 132:
   return r592_set_mode(dev, 1);
  default:
   return -EINVAL;
  }
 default:
  return -EINVAL;
 }
}
