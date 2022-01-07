
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_int_ioctl_desc {scalar_t__ num; } ;



__attribute__((used)) static int ioctl_sort_cmp(const void *a, const void *b)
{
 const struct v4l2_int_ioctl_desc *d1 = a, *d2 = b;

 if (d1->num > d2->num)
  return 1;

 if (d1->num < d2->num)
  return -1;

 return 0;
}
