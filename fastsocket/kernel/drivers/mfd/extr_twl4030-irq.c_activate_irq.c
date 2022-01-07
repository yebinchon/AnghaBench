
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IRQF_VALID ;
 int set_irq_flags (int,int ) ;
 int set_irq_noprobe (int) ;

__attribute__((used)) static inline void activate_irq(int irq)
{







 set_irq_noprobe(irq);

}
