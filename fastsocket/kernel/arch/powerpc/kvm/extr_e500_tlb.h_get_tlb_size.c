
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tlbe {int mas1; } ;



__attribute__((used)) static inline unsigned int get_tlb_size(const struct tlbe *tlbe)
{
 return (tlbe->mas1 >> 7) & 0x1f;
}
