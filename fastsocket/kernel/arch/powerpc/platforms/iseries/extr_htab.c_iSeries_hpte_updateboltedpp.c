
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int) ;
 unsigned long HW_PAGE_SHIFT ;
 int HvCallHpt_setPp (long,unsigned long) ;
 int MMU_PAGE_4K ;
 int MMU_SEGSIZE_256M ;
 unsigned long get_kernel_vsid (unsigned long,int ) ;
 long iSeries_hpte_find (unsigned long) ;
 int panic (char*) ;

__attribute__((used)) static void iSeries_hpte_updateboltedpp(unsigned long newpp, unsigned long ea,
     int psize, int ssize)
{
 unsigned long vsid,va,vpn;
 long slot;

 BUG_ON(psize != MMU_PAGE_4K);

 vsid = get_kernel_vsid(ea, MMU_SEGSIZE_256M);
 va = (vsid << 28) | (ea & 0x0fffffff);
 vpn = va >> HW_PAGE_SHIFT;
 slot = iSeries_hpte_find(vpn);
 if (slot == -1)
  panic("updateboltedpp: Could not find page to bolt\n");
 HvCallHpt_setPp(slot, newpp);
}
