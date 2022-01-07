
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int outb (int,int) ;

__attribute__((used)) static inline void
superio_enter(int ioreg)
{
 outb(0x87, ioreg);
 outb(0x87, ioreg);
}
