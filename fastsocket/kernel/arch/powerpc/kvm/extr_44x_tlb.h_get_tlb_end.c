
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvmppc_44x_tlbe {int dummy; } ;
typedef scalar_t__ gva_t ;


 scalar_t__ get_tlb_bytes (struct kvmppc_44x_tlbe const*) ;
 scalar_t__ get_tlb_eaddr (struct kvmppc_44x_tlbe const*) ;

__attribute__((used)) static inline gva_t get_tlb_end(const struct kvmppc_44x_tlbe *tlbe)
{
 return get_tlb_eaddr(tlbe) + get_tlb_bytes(tlbe) - 1;
}
