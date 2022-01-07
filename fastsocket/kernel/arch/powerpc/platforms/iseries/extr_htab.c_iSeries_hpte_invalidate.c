
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long HPTE_V_AVPN_VAL (unsigned long) ;
 unsigned long HPTE_V_VALID ;
 int HvCallHpt_invalidateSetSwBitsGet (unsigned long,int ,int ) ;
 int iSeries_hlock (unsigned long) ;
 unsigned long iSeries_hpte_getword0 (unsigned long) ;
 int iSeries_hunlock (unsigned long) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

__attribute__((used)) static void iSeries_hpte_invalidate(unsigned long slot, unsigned long va,
        int psize, int ssize, int local)
{
 unsigned long hpte_v;
 unsigned long avpn = va >> 23;
 unsigned long flags;

 local_irq_save(flags);

 iSeries_hlock(slot);

 hpte_v = iSeries_hpte_getword0(slot);

 if ((HPTE_V_AVPN_VAL(hpte_v) == avpn) && (hpte_v & HPTE_V_VALID))
  HvCallHpt_invalidateSetSwBitsGet(slot, 0, 0);

 iSeries_hunlock(slot);

 local_irq_restore(flags);
}
