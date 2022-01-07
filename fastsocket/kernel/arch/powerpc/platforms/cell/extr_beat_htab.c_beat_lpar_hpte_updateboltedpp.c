
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int BUG_ON (int) ;
 int MMU_SEGSIZE_256M ;
 int beat_htab_lock ;
 unsigned long beat_lpar_hpte_find (unsigned long,int) ;
 unsigned long beat_write_htab_entry (int ,unsigned long,int ,unsigned long,int ,int,int *,int *) ;
 unsigned long get_kernel_vsid (unsigned long,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void beat_lpar_hpte_updateboltedpp(unsigned long newpp,
       unsigned long ea,
       int psize, int ssize)
{
 unsigned long lpar_rc, slot, vsid, va;
 u64 dummy0, dummy1;

 vsid = get_kernel_vsid(ea, MMU_SEGSIZE_256M);
 va = (vsid << 28) | (ea & 0x0fffffff);

 spin_lock(&beat_htab_lock);
 slot = beat_lpar_hpte_find(va, psize);
 BUG_ON(slot == -1);

 lpar_rc = beat_write_htab_entry(0, slot, 0, newpp, 0, 7,
  &dummy0, &dummy1);
 spin_unlock(&beat_htab_lock);

 BUG_ON(lpar_rc != 0);
}
