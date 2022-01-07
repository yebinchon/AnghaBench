
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_pte {unsigned long v; unsigned long r; } ;


 int DBG_LOW (char*,...) ;
 unsigned long HPTE_R_C ;
 unsigned long HPTE_R_N ;
 unsigned long HPTE_R_PP ;
 unsigned long HPTE_V_AVPN ;
 int HPTE_V_COMPARE (unsigned long,unsigned long) ;
 unsigned long HPTE_V_VALID ;
 unsigned long hpte_encode_v (unsigned long,int,int) ;
 struct hash_pte* htab_address ;
 int native_lock_hpte (struct hash_pte*) ;
 int native_unlock_hpte (struct hash_pte*) ;
 int tlbie (unsigned long,int,int,int) ;

__attribute__((used)) static long native_hpte_updatepp(unsigned long slot, unsigned long newpp,
     unsigned long va, int psize, int ssize,
     int local)
{
 struct hash_pte *hptep = htab_address + slot;
 unsigned long hpte_v, want_v;
 int ret = 0;

 want_v = hpte_encode_v(va, psize, ssize);

 DBG_LOW("    update(va=%016lx, avpnv=%016lx, hash=%016lx, newpp=%x)",
  va, want_v & HPTE_V_AVPN, slot, newpp);

 native_lock_hpte(hptep);

 hpte_v = hptep->v;


 if (!HPTE_V_COMPARE(hpte_v, want_v) || !(hpte_v & HPTE_V_VALID)) {
  DBG_LOW(" -> miss\n");
  ret = -1;
 } else {
  DBG_LOW(" -> hit\n");

  hptep->r = (hptep->r & ~(HPTE_R_PP | HPTE_R_N)) |
   (newpp & (HPTE_R_PP | HPTE_R_N | HPTE_R_C));
 }
 native_unlock_hpte(hptep);


 tlbie(va, psize, ssize, local);

 return ret;
}
