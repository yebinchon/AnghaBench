
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_int_device {int dummy; } ;


 int EBUSY ;

__attribute__((used)) static int ioctl_reset(struct v4l2_int_device *s)
{
 return -EBUSY;
}
