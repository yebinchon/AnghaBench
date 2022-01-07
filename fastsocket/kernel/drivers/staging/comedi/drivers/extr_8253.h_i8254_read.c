
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int i8254_control_reg ;
 int inb (unsigned long) ;
 int outb (unsigned int,unsigned long) ;

__attribute__((used)) static inline int i8254_read(unsigned long base_address, unsigned int regshift,
        unsigned int counter_number)
{
 unsigned int byte;
 int ret;

 if (counter_number > 2)
  return -1;


 byte = counter_number << 6;
 outb(byte, base_address + (i8254_control_reg << regshift));


 ret = inb(base_address + (counter_number << regshift));

 ret += inb(base_address + (counter_number << regshift)) << 8;

 return ret;
}
