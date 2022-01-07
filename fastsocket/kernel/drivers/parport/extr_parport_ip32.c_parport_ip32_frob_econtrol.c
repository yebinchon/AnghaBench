
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parport {int dummy; } ;


 unsigned int parport_ip32_read_econtrol (struct parport*) ;
 int parport_ip32_write_econtrol (struct parport*,unsigned int) ;

__attribute__((used)) static inline void parport_ip32_frob_econtrol(struct parport *p,
           unsigned int mask,
           unsigned int val)
{
 unsigned int c;
 c = (parport_ip32_read_econtrol(p) & ~mask) ^ val;
 parport_ip32_write_econtrol(p, c);
}
