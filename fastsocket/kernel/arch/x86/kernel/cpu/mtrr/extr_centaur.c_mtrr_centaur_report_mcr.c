
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u32 ;
struct TYPE_2__ {void* high; void* low; } ;


 TYPE_1__* centaur_mcr ;

void mtrr_centaur_report_mcr(int mcr, u32 lo, u32 hi)
{
 centaur_mcr[mcr].low = lo;
 centaur_mcr[mcr].high = hi;
}
