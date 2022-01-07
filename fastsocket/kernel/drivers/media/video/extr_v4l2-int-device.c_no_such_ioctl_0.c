
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_int_device {int dummy; } ;


 int ENOIOCTLCMD ;

__attribute__((used)) static int no_such_ioctl_0(struct v4l2_int_device *d)
{
 return -ENOIOCTLCMD;
}
