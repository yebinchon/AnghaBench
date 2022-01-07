
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mxc_iomux_release_pin (unsigned int) ;

void mxc_iomux_release_multiple_pins(unsigned int *pin_list, int count)
{
 unsigned int *p = pin_list;
 int i;

 for (i = 0; i < count; i++) {
  mxc_iomux_release_pin(*p);
  p++;
 }
}
