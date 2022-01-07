
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 long EINVAL ;

__attribute__((used)) static long
uctrl_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
{
 switch (cmd) {
  default:
   return -EINVAL;
 }
 return 0;
}
