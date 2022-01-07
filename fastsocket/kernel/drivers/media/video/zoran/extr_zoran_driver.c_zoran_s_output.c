
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 int EINVAL ;

__attribute__((used)) static int zoran_s_output(struct file *file, void *__fh, unsigned int output)
{
 if (output != 0)
  return -EINVAL;

 return 0;
}
