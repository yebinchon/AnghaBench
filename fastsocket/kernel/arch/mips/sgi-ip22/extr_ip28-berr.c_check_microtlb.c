
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int dma_ctrl; } ;


 scalar_t__ PHYS_TO_XKSEG_UNCACHED (unsigned long) ;
 scalar_t__ addr_is_ram (unsigned long,int) ;
 unsigned long cpu_err_addr ;
 TYPE_1__* sgimc ;

__attribute__((used)) static int check_microtlb(u32 hi, u32 lo, unsigned long vaddr)
{


 vaddr &= 0x7fffffff;


 if ((lo & 2) && (vaddr >> 21) == ((hi<<1) >> 22)) {
  u32 ctl = sgimc->dma_ctrl;
  if (ctl & 1) {
   unsigned int pgsz = (ctl & 2) ? 14:12;

   unsigned long pte = (lo >> 6) << 12;
   pte += 8*((vaddr >> pgsz) & 0x1ff);
   if (addr_is_ram(pte, 8)) {





    unsigned long a = *(unsigned long *)
      PHYS_TO_XKSEG_UNCACHED(pte);
    a = (a & 0x3f) << 6;
    a += vaddr & ((1 << pgsz) - 1);
    return (cpu_err_addr == a);
   }
  }
 }
 return 0;
}
