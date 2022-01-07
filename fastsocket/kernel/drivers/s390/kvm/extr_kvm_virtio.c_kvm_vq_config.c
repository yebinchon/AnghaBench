
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vqconfig {int dummy; } ;
struct kvm_device_desc {int dummy; } ;



__attribute__((used)) static struct kvm_vqconfig *kvm_vq_config(const struct kvm_device_desc *desc)
{
 return (struct kvm_vqconfig *)(desc + 1);
}
