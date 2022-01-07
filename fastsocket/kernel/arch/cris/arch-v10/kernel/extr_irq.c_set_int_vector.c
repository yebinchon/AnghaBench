
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ irqvectptr ;
struct TYPE_2__ {scalar_t__* v; } ;


 TYPE_1__* etrax_irv ;

void
set_int_vector(int n, irqvectptr addr)
{
 etrax_irv->v[n + 0x20] = (irqvectptr)addr;
}
