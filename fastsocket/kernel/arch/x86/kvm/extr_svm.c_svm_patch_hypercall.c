
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;



__attribute__((used)) static void
svm_patch_hypercall(struct kvm_vcpu *vcpu, unsigned char *hypercall)
{



 hypercall[0] = 0x0f;
 hypercall[1] = 0x01;
 hypercall[2] = 0xd9;
}
