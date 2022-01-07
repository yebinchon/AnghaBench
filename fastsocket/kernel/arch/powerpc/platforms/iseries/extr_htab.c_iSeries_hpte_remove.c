
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HPTES_PER_GROUP ;
 unsigned long HPTE_V_BOLTED ;
 int HvCallHpt_invalidateSetSwBitsGet (unsigned long,int ,int ) ;
 int iSeries_hlock (unsigned long) ;
 unsigned long iSeries_hpte_getword0 (unsigned long) ;
 int iSeries_hunlock (unsigned long) ;
 int mftb () ;

__attribute__((used)) static long iSeries_hpte_remove(unsigned long hpte_group)
{
 unsigned long slot_offset;
 int i;
 unsigned long hpte_v;


 slot_offset = mftb() & 0x7;

 iSeries_hlock(hpte_group);

 for (i = 0; i < HPTES_PER_GROUP; i++) {
  hpte_v = iSeries_hpte_getword0(hpte_group + slot_offset);

  if (! (hpte_v & HPTE_V_BOLTED)) {
   HvCallHpt_invalidateSetSwBitsGet(hpte_group +
        slot_offset, 0, 0);
   iSeries_hunlock(hpte_group);
   return i;
  }

  slot_offset++;
  slot_offset &= 0x7;
 }

 iSeries_hunlock(hpte_group);

 return -1;
}
