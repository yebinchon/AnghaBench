
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int i8254_control_reg ;
 int inb (unsigned long) ;
 int outb (int,unsigned long) ;

__attribute__((used)) static inline int i8254_status(unsigned long base_address,
          unsigned int regshift,
          unsigned int counter_number)
{
 outb(0xE0 | (2 << counter_number),
      base_address + (i8254_control_reg << regshift));
 return inb(base_address + (counter_number << regshift));
}
