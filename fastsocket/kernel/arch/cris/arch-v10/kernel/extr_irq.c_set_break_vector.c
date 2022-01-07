
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ irqvectptr ;
struct TYPE_2__ {int * v; } ;


 TYPE_1__* etrax_irv ;

void
set_break_vector(int n, irqvectptr addr)
{
 unsigned short *jinstr = (unsigned short *)&etrax_irv->v[n*2];
 unsigned long *jaddr = (unsigned long *)(jinstr + 1);



 *jinstr = 0x0d3f;
 *jaddr = (unsigned long)addr;


}
