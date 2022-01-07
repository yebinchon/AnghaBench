
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_CPLBS ;
 int* dcplb_rr_index ;
 int first_switched_dcplb ;

__attribute__((used)) static int evict_one_dcplb(int cpu)
{
 int i = first_switched_dcplb + dcplb_rr_index[cpu];
 if (i >= MAX_CPLBS) {
  i -= MAX_CPLBS - first_switched_dcplb;
  dcplb_rr_index[cpu] -= MAX_CPLBS - first_switched_dcplb;
 }
 dcplb_rr_index[cpu]++;
 return i;
}
