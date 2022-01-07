
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm {int dummy; } ;



__attribute__((used)) static inline int irqchip_in_kernel(struct kvm *kvm)
{
 return 1;
}
