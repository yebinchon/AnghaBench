
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s8 ;



__attribute__((used)) static inline int lis3lv02d_get_axis(s8 axis, int hw_values[3])
{
 if (axis > 0)
  return hw_values[axis - 1];
 else
  return -hw_values[-axis - 1];
}
