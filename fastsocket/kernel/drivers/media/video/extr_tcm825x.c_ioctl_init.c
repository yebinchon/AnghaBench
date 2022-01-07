
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_int_device {int dummy; } ;


 int tcm825x_configure (struct v4l2_int_device*) ;

__attribute__((used)) static int ioctl_init(struct v4l2_int_device *s)
{
 return tcm825x_configure(s);
}
