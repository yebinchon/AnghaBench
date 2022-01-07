
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int data; } ;


 int CPLB_VALID ;
 int MAX_CPLBS ;
 int first_switched_icplb ;
 int* icplb_rr_index ;
 TYPE_1__** icplb_tbl ;

__attribute__((used)) static int evict_one_icplb(unsigned int cpu)
{
 int i;
 for (i = first_switched_icplb; i < MAX_CPLBS; i++)
  if ((icplb_tbl[cpu][i].data & CPLB_VALID) == 0)
   return i;
 i = first_switched_icplb + icplb_rr_index[cpu];
 if (i >= MAX_CPLBS) {
  i -= MAX_CPLBS - first_switched_icplb;
  icplb_rr_index[cpu] -= MAX_CPLBS - first_switched_icplb;
 }
 icplb_rr_index[cpu]++;
 return i;
}
