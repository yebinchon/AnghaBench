
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int ia64_ptcl (int,int) ;

void machine_tlb_purge(u64 va, u64 ps)
{
 ia64_ptcl(va, ps << 2);
}
