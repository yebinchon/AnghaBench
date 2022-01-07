
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 int EINVAL ;

__attribute__((used)) static int vidioc_s_input(struct file *filp, void *priv, unsigned int i)
{
 return i ? -EINVAL : 0;
}
