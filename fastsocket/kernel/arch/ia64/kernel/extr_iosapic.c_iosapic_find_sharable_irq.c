
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iosapic_intr_info {unsigned long trigger; unsigned long polarity; scalar_t__ dmode; int count; } ;


 int EINVAL ;
 int ENOSPC ;
 unsigned long IOSAPIC_EDGE ;
 scalar_t__ IOSAPIC_FIXED ;
 scalar_t__ IOSAPIC_LOWEST_PRIORITY ;
 int IRQF_SHARED ;
 int NR_IRQS ;
 scalar_t__ can_request_irq (int,int ) ;
 struct iosapic_intr_info* iosapic_intr_info ;

__attribute__((used)) static int iosapic_find_sharable_irq(unsigned long trigger, unsigned long pol)
{
 int i, irq = -ENOSPC, min_count = -1;
 struct iosapic_intr_info *info;





 if (trigger == IOSAPIC_EDGE)
  return -EINVAL;

 for (i = 0; i < NR_IRQS; i++) {
  info = &iosapic_intr_info[i];
  if (info->trigger == trigger && info->polarity == pol &&
      (info->dmode == IOSAPIC_FIXED ||
       info->dmode == IOSAPIC_LOWEST_PRIORITY) &&
      can_request_irq(i, IRQF_SHARED)) {
   if (min_count == -1 || info->count < min_count) {
    irq = i;
    min_count = info->count;
   }
  }
 }
 return irq;
}
