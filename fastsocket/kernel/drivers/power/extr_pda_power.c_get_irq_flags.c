
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {unsigned int flags; } ;


 unsigned int IRQF_SAMPLE_RANDOM ;
 unsigned int IRQF_SHARED ;
 unsigned int IRQF_TRIGGER_MASK ;

__attribute__((used)) static inline unsigned int get_irq_flags(struct resource *res)
{
 unsigned int flags = IRQF_SAMPLE_RANDOM | IRQF_SHARED;

 flags |= res->flags & IRQF_TRIGGER_MASK;

 return flags;
}
