
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ B1_ANALYSE ;
 unsigned char inb (scalar_t__) ;
 int outb (unsigned char,unsigned int) ;

__attribute__((used)) static inline unsigned char b1outp(unsigned int base,
       unsigned short offset,
       unsigned char value)
{
 outb(value, base + offset);
 return inb(base + B1_ANALYSE);
}
