
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int inb (int) ;
 int outb (int,int) ;

__attribute__((used)) static inline int superio_inb(int sioaddr, int reg)
{
 outb(reg, sioaddr);
 return inb(sioaddr+1);
}
