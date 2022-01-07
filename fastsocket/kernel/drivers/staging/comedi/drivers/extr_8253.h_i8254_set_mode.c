
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int I8254_BINARY ;
 unsigned int I8254_MODE5 ;
 unsigned int i8254_control_reg ;
 int outb (unsigned int,unsigned long) ;

__attribute__((used)) static inline int i8254_set_mode(unsigned long base_address,
     unsigned int regshift,
     unsigned int counter_number, unsigned int mode)
{
 unsigned int byte;

 if (counter_number > 2)
  return -1;
 if (mode > (I8254_MODE5 | I8254_BINARY))
  return -1;

 byte = counter_number << 6;
 byte |= 0x30;
 byte |= mode;
 outb(byte, base_address + (i8254_control_reg << regshift));

 return 0;
}
