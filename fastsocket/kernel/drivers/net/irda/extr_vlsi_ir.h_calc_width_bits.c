
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BAUD_BITS (unsigned int) ;

__attribute__((used)) static inline unsigned
calc_width_bits(unsigned baudrate, unsigned widthselect, unsigned clockselect)
{
 unsigned tmp;

 if (widthselect)
  return (clockselect) ? 12 : 24;

 tmp = ((clockselect) ? 12 : 24) / (BAUD_BITS(baudrate)+1);



 return (tmp>0) ? (tmp-1) : 0;
}
