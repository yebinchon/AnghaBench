
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tlbe {int mas2; } ;
typedef int gva_t ;



__attribute__((used)) static inline gva_t get_tlb_eaddr(const struct tlbe *tlbe)
{
 return tlbe->mas2 & 0xfffff000;
}
