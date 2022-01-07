
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _PNPWRP ;
 int outb (unsigned char,int ) ;

__attribute__((used)) static inline void write_data(unsigned char x)
{
 outb(x, _PNPWRP);
}
