
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DART_CNTL ;
 unsigned int DART_CNTL_U3_FLUSHTLB ;
 unsigned int DART_CNTL_U4_FLUSHTLB ;
 unsigned int DART_IN (int ) ;
 int DART_OUT (int ,unsigned int) ;
 int DBG (char*) ;
 scalar_t__ dart_is_u4 ;
 int invalidate_lock ;
 int panic (char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void dart_tlb_invalidate_all(void)
{
 unsigned long l = 0;
 unsigned int reg, inv_bit;
 unsigned long limit;
 unsigned long flags;

 spin_lock_irqsave(&invalidate_lock, flags);

 DBG("dart: flush\n");
 limit = 0;

 inv_bit = dart_is_u4 ? DART_CNTL_U4_FLUSHTLB : DART_CNTL_U3_FLUSHTLB;
retry:
 l = 0;
 reg = DART_IN(DART_CNTL);
 reg |= inv_bit;
 DART_OUT(DART_CNTL, reg);

 while ((DART_IN(DART_CNTL) & inv_bit) && l < (1L << limit))
  l++;
 if (l == (1L << limit)) {
  if (limit < 4) {
   limit++;
   reg = DART_IN(DART_CNTL);
   reg &= ~inv_bit;
   DART_OUT(DART_CNTL, reg);
   goto retry;
  } else
   panic("DART: TLB did not flush after waiting a long "
         "time. Buggy U3 ?");
 }

 spin_unlock_irqrestore(&invalidate_lock, flags);
}
