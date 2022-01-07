
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int H_EOI ;
 long plpar_hcall_norets (int ,unsigned long) ;

__attribute__((used)) static inline long plpar_eoi(unsigned long xirr)
{
 return plpar_hcall_norets(H_EOI, xirr);
}
