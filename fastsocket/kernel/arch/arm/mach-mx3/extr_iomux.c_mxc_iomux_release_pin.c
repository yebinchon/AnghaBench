
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int const IOMUX_PADNUM_MASK ;
 int PIN_MAX ;
 int clear_bit (unsigned int,int ) ;
 int mxc_pin_alloc_map ;

void mxc_iomux_release_pin(const unsigned int pin)
{
 unsigned pad = pin & IOMUX_PADNUM_MASK;

 if (pad < (PIN_MAX + 1))
  clear_bit(pad, mxc_pin_alloc_map);
}
