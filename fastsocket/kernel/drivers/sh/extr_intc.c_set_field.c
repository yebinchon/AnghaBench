
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int _INTC_SHIFT (unsigned int) ;
 unsigned int _INTC_WIDTH (unsigned int) ;

__attribute__((used)) static inline unsigned int set_field(unsigned int value,
         unsigned int field_value,
         unsigned int handle)
{
 unsigned int width = _INTC_WIDTH(handle);
 unsigned int shift = _INTC_SHIFT(handle);

 value &= ~(((1 << width) - 1) << shift);
 value |= field_value << shift;
 return value;
}
