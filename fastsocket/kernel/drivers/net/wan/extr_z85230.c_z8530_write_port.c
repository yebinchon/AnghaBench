
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int Z8530_PORT_OF (unsigned long) ;
 unsigned long Z8530_PORT_SLEEP ;
 int outb (int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static inline void z8530_write_port(unsigned long p, u8 d)
{
 outb(d,Z8530_PORT_OF(p));
 if(p&Z8530_PORT_SLEEP)
  udelay(5);
}
