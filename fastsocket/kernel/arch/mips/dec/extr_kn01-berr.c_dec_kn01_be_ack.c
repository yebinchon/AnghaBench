
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 scalar_t__ CKSEG1ADDR (scalar_t__) ;
 scalar_t__ KN01_CSR ;
 int KN01_CSR_MEMERR ;
 scalar_t__ KN01_SLOT_BASE ;
 int cached_kn01_csr ;
 int iob () ;
 int kn01_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void dec_kn01_be_ack(void)
{
 volatile u16 *csr = (void *)CKSEG1ADDR(KN01_SLOT_BASE + KN01_CSR);
 unsigned long flags;

 spin_lock_irqsave(&kn01_lock, flags);

 *csr = cached_kn01_csr | KN01_CSR_MEMERR;
 iob();

 spin_unlock_irqrestore(&kn01_lock, flags);
}
