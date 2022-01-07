
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipw_tty {int dummy; } ;
struct TYPE_2__ {int minor_start; } ;


 int IPWIRELESS_PCMCIA_MINORS ;
 int IPWIRELESS_PCMCIA_MINOR_RANGE ;
 int TTYTYPE_RAS_RAW ;
 TYPE_1__* ipw_tty_driver ;
 int ipwireless_loopback ;
 struct ipw_tty** ttys ;

__attribute__((used)) static struct ipw_tty *get_tty(int minor)
{
 if (minor < ipw_tty_driver->minor_start
   || minor >= ipw_tty_driver->minor_start +
   IPWIRELESS_PCMCIA_MINORS)
  return ((void*)0);
 else {
  int minor_offset = minor - ipw_tty_driver->minor_start;






  if (!ipwireless_loopback &&
    minor_offset >=
     IPWIRELESS_PCMCIA_MINOR_RANGE * TTYTYPE_RAS_RAW)
   return ((void*)0);

  return ttys[minor_offset];
 }
}
