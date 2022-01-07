
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ DATA_H ;
 scalar_t__ DATA_L ;
 int outb (unsigned short,scalar_t__) ;

__attribute__((used)) static inline void bt3c_put(unsigned int iobase, unsigned short value)
{
 outb(value & 0xff, iobase + DATA_L);
 outb((value >> 8) & 0xff, iobase + DATA_H);
}
