
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char inb (unsigned int) ;

__attribute__((used)) static inline unsigned char nsp_read(unsigned int base,
         unsigned int index)
{
 return inb(base + index);
}
