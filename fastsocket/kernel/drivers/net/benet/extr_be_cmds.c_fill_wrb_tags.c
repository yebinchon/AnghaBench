
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct be_mcc_wrb {unsigned long tag0; int tag1; } ;


 int upper_32_bits (unsigned long) ;

__attribute__((used)) static inline void fill_wrb_tags(struct be_mcc_wrb *wrb,
     unsigned long addr)
{
 wrb->tag0 = addr & 0xFFFFFFFF;
 wrb->tag1 = upper_32_bits(addr);
}
