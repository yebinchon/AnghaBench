
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* vip ;


 int CIA_BROKEN_TBIA_BASE ;
 int CIA_BROKEN_TBIA_SIZE ;
 scalar_t__ CIA_IOC_PCI_Tn_BASE (int) ;
 scalar_t__ CIA_IOC_PCI_Wn_BASE (int) ;
 scalar_t__ CIA_IOC_PCI_Wn_MASK (int) ;
 int PAGE_SHIFT ;
 unsigned long* __alloc_bootmem (int,int,int ) ;
 int virt_to_phys (unsigned long*) ;

__attribute__((used)) static inline void
cia_prepare_tbia_workaround(int window)
{
 unsigned long *ppte, pte;
 long i;


 ppte = __alloc_bootmem(CIA_BROKEN_TBIA_SIZE, 32768, 0);
 pte = (virt_to_phys(ppte) >> (PAGE_SHIFT - 1)) | 1;

 for (i = 0; i < CIA_BROKEN_TBIA_SIZE / sizeof(unsigned long); ++i)
  ppte[i] = pte;

 *(vip)CIA_IOC_PCI_Wn_BASE(window) = CIA_BROKEN_TBIA_BASE | 3;
 *(vip)CIA_IOC_PCI_Wn_MASK(window)
   = (CIA_BROKEN_TBIA_SIZE*1024 - 1) & 0xfff00000;
 *(vip)CIA_IOC_PCI_Tn_BASE(window) = virt_to_phys(ppte) >> 2;
}
