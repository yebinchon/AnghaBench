
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cserve_dis (unsigned int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int srm_irq_lock ;

__attribute__((used)) static void
srm_disable_irq(unsigned int irq)
{
 spin_lock(&srm_irq_lock);
 cserve_dis(irq - 16);
 spin_unlock(&srm_irq_lock);
}
