
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int BUG_ON (int) ;
 int DBG_LOW (char*,...) ;
 int HPTE_V_VALID ;
 int MMU_SEGSIZE_256M ;
 int beat_htab_lock ;
 int beat_lpar_hpte_getword0 (unsigned long) ;
 unsigned long beat_write_htab_entry (int ,unsigned long,int ,int ,int ,int ,int*,int*) ;
 unsigned long hpte_encode_v (unsigned long,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void beat_lpar_hpte_invalidate(unsigned long slot, unsigned long va,
      int psize, int ssize, int local)
{
 unsigned long want_v;
 unsigned long lpar_rc;
 u64 dummy1, dummy2;
 unsigned long flags;

 DBG_LOW("    inval : slot=%lx, va=%016lx, psize: %d, local: %d\n",
  slot, va, psize, local);
 want_v = hpte_encode_v(va, psize, MMU_SEGSIZE_256M);

 spin_lock_irqsave(&beat_htab_lock, flags);
 dummy1 = beat_lpar_hpte_getword0(slot);

 if ((dummy1 & ~0x7FUL) != (want_v & ~0x7FUL)) {
  DBG_LOW("not found !\n");
  spin_unlock_irqrestore(&beat_htab_lock, flags);
  return;
 }

 lpar_rc = beat_write_htab_entry(0, slot, 0, 0, HPTE_V_VALID, 0,
  &dummy1, &dummy2);
 spin_unlock_irqrestore(&beat_htab_lock, flags);

 BUG_ON(lpar_rc != 0);
}
