
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parport {int dummy; } ;


 int IEEE1284_MODE_COMPAT ;
 scalar_t__ parport_negotiate (struct parport*,int) ;

__attribute__((used)) static int lp_negotiate(struct parport * port, int mode)
{
 if (parport_negotiate (port, mode) != 0) {
  mode = IEEE1284_MODE_COMPAT;
  parport_negotiate (port, mode);
 }

 return (mode);
}
