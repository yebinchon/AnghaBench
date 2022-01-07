
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int outb (unsigned int,unsigned long) ;

__attribute__((used)) static inline void i8254_write(unsigned long base_address,
          unsigned int regshift,
          unsigned int counter_number, unsigned int count)
{
 unsigned int byte;

 if (counter_number > 2)
  return;

 byte = count & 0xff;
 outb(byte, base_address + (counter_number << regshift));
 byte = (count >> 8) & 0xff;
 outb(byte, base_address + (counter_number << regshift));
}
