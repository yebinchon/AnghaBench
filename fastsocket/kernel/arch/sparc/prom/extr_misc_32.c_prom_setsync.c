
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ sfunc_t ;
struct TYPE_2__ {scalar_t__* pv_synchook; } ;


 TYPE_1__* romvec ;

void
prom_setsync(sfunc_t funcp)
{
 if(!funcp) return;
 *romvec->pv_synchook = funcp;
}
