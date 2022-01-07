
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DART_CNTL ;
 unsigned long DART_CNTL_U4_ENABLE ;
 unsigned long DART_CNTL_U4_IONE ;
 unsigned long DART_CNTL_U4_IONE_MASK ;
 unsigned long DART_IN (int ) ;
 int DART_OUT (int ,unsigned int) ;
 int invalidate_lock ;
 int panic (char*) ;
 int rmb () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void dart_tlb_invalidate_one(unsigned long bus_rpn)
{
 unsigned int reg;
 unsigned int l, limit;
 unsigned long flags;

 spin_lock_irqsave(&invalidate_lock, flags);

 reg = DART_CNTL_U4_ENABLE | DART_CNTL_U4_IONE |
  (bus_rpn & DART_CNTL_U4_IONE_MASK);
 DART_OUT(DART_CNTL, reg);

 limit = 0;
wait_more:
 l = 0;
 while ((DART_IN(DART_CNTL) & DART_CNTL_U4_IONE) && l < (1L << limit)) {
  rmb();
  l++;
 }

 if (l == (1L << limit)) {
  if (limit < 4) {
   limit++;
   goto wait_more;
  } else
   panic("DART: TLB did not flush after waiting a long "
         "time. Buggy U4 ?");
 }

 spin_unlock_irqrestore(&invalidate_lock, flags);
}
