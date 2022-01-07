
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int H_IPI ;
 long plpar_hcall_norets (int ,unsigned long,unsigned long) ;

__attribute__((used)) static inline long plpar_ipi(unsigned long servernum, unsigned long mfrr)
{
 return plpar_hcall_norets(H_IPI, servernum, mfrr);
}
