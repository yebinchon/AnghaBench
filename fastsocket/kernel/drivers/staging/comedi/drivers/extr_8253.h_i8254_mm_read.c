
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int i8254_control_reg ;
 int readb (void*) ;
 int writeb (unsigned int,void*) ;

__attribute__((used)) static inline int i8254_mm_read(void *base_address, unsigned int regshift,
    unsigned int counter_number)
{
 unsigned int byte;
 int ret;

 if (counter_number > 2)
  return -1;


 byte = counter_number << 6;
 writeb(byte, base_address + (i8254_control_reg << regshift));


 ret = readb(base_address + (counter_number << regshift));

 ret += readb(base_address + (counter_number << regshift)) << 8;

 return ret;
}
