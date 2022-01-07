
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;
struct tlbe {int dummy; } ;


 unsigned int get_tlb_size (struct tlbe const*) ;

__attribute__((used)) static inline u64 get_tlb_bytes(const struct tlbe *tlbe)
{
 unsigned int pgsize = get_tlb_size(tlbe);
 return 1ULL << 10 << pgsize;
}
