
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;



__attribute__((used)) static int vidioc_g_input(struct file *file, void *fh, unsigned int *i)
{
 *i = 0;
 return 0;
}
