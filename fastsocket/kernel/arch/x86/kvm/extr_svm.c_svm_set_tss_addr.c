
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm {int dummy; } ;



__attribute__((used)) static int svm_set_tss_addr(struct kvm *kvm, unsigned int addr)
{
 return 0;
}
