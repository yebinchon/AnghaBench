
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 int EINVAL ;
 scalar_t__ unlikely (unsigned int) ;

__attribute__((used)) static int radio_s_input(struct file *filp, void *priv, unsigned int i)
{
 if (unlikely(i))
  return -EINVAL;

 return 0;
}
