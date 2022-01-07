
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_CPLBS ;
 int first_switched_icplb ;
 int* icplb_rr_index ;

__attribute__((used)) static int evict_one_icplb(int cpu)
{
 int i = first_switched_icplb + icplb_rr_index[cpu];
 if (i >= MAX_CPLBS) {
  i -= MAX_CPLBS - first_switched_icplb;
  icplb_rr_index[cpu] -= MAX_CPLBS - first_switched_icplb;
 }
 icplb_rr_index[cpu]++;
 return i;
}
