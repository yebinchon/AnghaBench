
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int PIN_GLOBAL_NUM (unsigned int const) ;
 int PIN_MAX ;
 int clear_bit (unsigned int,int ) ;
 int mxc_pin_alloc_map ;

void mxc_iomux_release_pin(const unsigned int pin_mode)
{
 unsigned pad = PIN_GLOBAL_NUM(pin_mode);

 if (pad < (PIN_MAX + 1))
  clear_bit(pad, mxc_pin_alloc_map);
}
