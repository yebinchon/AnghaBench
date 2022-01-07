
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm {int dummy; } ;


 int * pic_irqchip (struct kvm*) ;
 int smp_rmb () ;

__attribute__((used)) static inline int irqchip_in_kernel(struct kvm *kvm)
{
 int ret;

 ret = (pic_irqchip(kvm) != ((void*)0));
 smp_rmb();
 return ret;
}
