
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct tlbe {int mas7; int mas3; } ;



__attribute__((used)) static inline u64 get_tlb_raddr(const struct tlbe *tlbe)
{
 u64 rpn = tlbe->mas7;
 return (rpn << 32) | (tlbe->mas3 & 0xfffff000);
}
