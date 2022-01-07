
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u32 ;


 int EMR_BASE ;
 int EVENT_BIT (unsigned int) ;
 int LEVEL (unsigned int) ;
 int inl (int) ;
 int outl (int,int) ;

__attribute__((used)) static inline void disable_systemasic_irq(unsigned int irq)
{
 __u32 emr = EMR_BASE + (LEVEL(irq) << 4) + (LEVEL(irq) << 2);
 __u32 mask;

 mask = inl(emr);
 mask &= ~(1 << EVENT_BIT(irq));
 outl(mask, emr);
}
