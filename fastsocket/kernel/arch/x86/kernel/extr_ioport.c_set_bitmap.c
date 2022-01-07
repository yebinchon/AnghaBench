
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __clear_bit (unsigned int,unsigned long*) ;
 int __set_bit (unsigned int,unsigned long*) ;

__attribute__((used)) static void set_bitmap(unsigned long *bitmap, unsigned int base,
         unsigned int extent, int new_value)
{
 unsigned int i;

 for (i = base; i < base + extent; i++) {
  if (new_value)
   __set_bit(i, bitmap);
  else
   __clear_bit(i, bitmap);
 }
}
