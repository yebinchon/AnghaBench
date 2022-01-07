
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int pfn_t ;


 int PAGE_SHIFT ;
 int PT64_BASE_ADDR_MASK ;

__attribute__((used)) static pfn_t spte_to_pfn(u64 pte)
{
 return (pte & PT64_BASE_ADDR_MASK) >> PAGE_SHIFT;
}
