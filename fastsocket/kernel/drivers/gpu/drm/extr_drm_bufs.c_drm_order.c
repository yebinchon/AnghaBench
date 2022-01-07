
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int drm_order(unsigned long size)
{
 int order;
 unsigned long tmp;

 for (order = 0, tmp = size >> 1; tmp; tmp >>= 1, order++) ;

 if (size & (size - 1))
  ++order;

 return order;
}
