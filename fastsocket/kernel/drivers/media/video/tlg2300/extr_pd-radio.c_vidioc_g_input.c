
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct file {int dummy; } ;


 int EINVAL ;

__attribute__((used)) static int vidioc_g_input(struct file *filp, void *priv, u32 *i)
{
 return (*i != 0) ? -EINVAL : 0;
}
