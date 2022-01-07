
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int poor_mans_delay () ;
 int show_value (unsigned long) ;

void
panic_handler(unsigned long panicPC, unsigned long panicSSR,
       unsigned long panicEXPEVT)
{
 while (1) {

  show_value(panicPC);
  poor_mans_delay();
  show_value(panicSSR);
  poor_mans_delay();
  show_value(panicEXPEVT);
  poor_mans_delay();
 }
}
