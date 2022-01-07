
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvmppc_44x_tlbe {int word1; } ;



__attribute__((used)) static inline u64 get_tlb_raddr(const struct kvmppc_44x_tlbe *tlbe)
{
 u64 word1 = tlbe->word1;
 return ((word1 & 0xf) << 32) | (word1 & 0xfffffc00);
}
