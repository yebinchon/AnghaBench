
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvmppc_44x_tlbe {int word0; } ;



__attribute__((used)) static inline unsigned int get_tlb_ts(const struct kvmppc_44x_tlbe *tlbe)
{
 return (tlbe->word0 >> 8) & 0x1;
}
