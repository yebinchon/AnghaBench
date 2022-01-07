
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm {int dummy; } ;
typedef int gfn_t ;



gfn_t unalias_gfn(struct kvm *kvm, gfn_t gfn)
{
 return gfn;
}
