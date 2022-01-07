
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loop_device {int dummy; } ;


 int EINVAL ;

__attribute__((used)) static int
cryptoloop_ioctl(struct loop_device *lo, int cmd, unsigned long arg)
{
 return -EINVAL;
}
