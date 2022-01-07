
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int BUG_ON (int) ;
 int DBG_LOW (char*,...) ;
 unsigned long HPTE_V_AVPN ;
 int MMU_SEGSIZE_256M ;
 int beat_htab_lock ;
 int beat_lpar_hpte_getword0 (unsigned long) ;
 unsigned long beat_write_htab_entry (int ,unsigned long,int ,unsigned long,int ,int,int*,int*) ;
 unsigned long hpte_encode_v (unsigned long,int,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static long beat_lpar_hpte_updatepp(unsigned long slot,
        unsigned long newpp,
        unsigned long va,
        int psize, int ssize, int local)
{
 unsigned long lpar_rc;
 u64 dummy0, dummy1;
 unsigned long want_v;

 want_v = hpte_encode_v(va, psize, MMU_SEGSIZE_256M);

 DBG_LOW("    update: "
  "avpnv=%016lx, slot=%016lx, psize: %d, newpp %016lx ... ",
  want_v & HPTE_V_AVPN, slot, psize, newpp);

 spin_lock(&beat_htab_lock);
 dummy0 = beat_lpar_hpte_getword0(slot);
 if ((dummy0 & ~0x7FUL) != (want_v & ~0x7FUL)) {
  DBG_LOW("not found !\n");
  spin_unlock(&beat_htab_lock);
  return -1;
 }

 lpar_rc = beat_write_htab_entry(0, slot, 0, newpp, 0, 7, &dummy0,
     &dummy1);
 spin_unlock(&beat_htab_lock);
 if (lpar_rc != 0 || dummy0 == 0) {
  DBG_LOW("not found !\n");
  return -1;
 }

 DBG_LOW("ok %lx %lx\n", dummy0, dummy1);

 BUG_ON(lpar_rc != 0);

 return 0;
}
