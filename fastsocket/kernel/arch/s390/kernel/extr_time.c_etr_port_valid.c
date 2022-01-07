
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ v3; scalar_t__ v2; scalar_t__ v1; } ;
struct TYPE_3__ {unsigned int psc1; unsigned int psc0; int y; } ;
struct etr_aib {scalar_t__ tsp; TYPE_2__ slsw; TYPE_1__ esw; } ;


 unsigned int etr_lpsc_operational_step ;
 unsigned int etr_lpsc_pps_mode ;

__attribute__((used)) static int etr_port_valid(struct etr_aib *aib, int port)
{
 unsigned int psc;


 if (aib->tsp == 0)
  return 0;

 psc = port ? aib->esw.psc1 : aib->esw.psc0;
 if (psc == etr_lpsc_pps_mode)
  return 1;
 if (psc == etr_lpsc_operational_step)
  return !aib->esw.y && aib->slsw.v1 &&
   aib->slsw.v2 && aib->slsw.v3;
 return 0;
}
