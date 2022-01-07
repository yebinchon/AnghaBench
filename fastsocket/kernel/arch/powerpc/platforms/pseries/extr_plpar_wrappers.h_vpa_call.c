
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int H_REGISTER_VPA ;
 long plpar_hcall_norets (int ,unsigned long,unsigned long,unsigned long) ;

__attribute__((used)) static inline long vpa_call(unsigned long flags, unsigned long cpu,
  unsigned long vpa)
{

 flags = flags << (63 - 18);

 return plpar_hcall_norets(H_REGISTER_VPA, flags, cpu, vpa);
}
