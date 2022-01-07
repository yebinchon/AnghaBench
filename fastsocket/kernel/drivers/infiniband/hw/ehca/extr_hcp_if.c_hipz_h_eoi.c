
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int H_EOI ;
 int iosync () ;
 int plpar_hcall_norets (int ,unsigned long) ;

u64 hipz_h_eoi(int irq)
{
 unsigned long xirr;

 iosync();
 xirr = (0xffULL << 24) | irq;

 return plpar_hcall_norets(H_EOI, xirr);
}
