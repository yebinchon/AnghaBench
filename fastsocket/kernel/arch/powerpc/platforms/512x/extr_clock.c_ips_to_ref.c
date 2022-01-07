
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int scfr1; } ;


 TYPE_1__* clockctl ;
 long sys_to_ref (unsigned long) ;

__attribute__((used)) static long ips_to_ref(unsigned long rate)
{
 int ips_div = (clockctl->scfr1 >> 23) & 0x7;

 rate *= ips_div;
 rate *= 2;
 return sys_to_ref(rate);
}
