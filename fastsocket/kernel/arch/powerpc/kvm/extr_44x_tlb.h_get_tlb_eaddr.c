
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvmppc_44x_tlbe {int word0; } ;
typedef int gva_t ;



__attribute__((used)) static inline gva_t get_tlb_eaddr(const struct kvmppc_44x_tlbe *tlbe)
{
 return tlbe->word0 & 0xfffffc00;
}
