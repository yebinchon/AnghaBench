
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct kvm_device_desc {scalar_t__ num_vq; } ;


 scalar_t__ kvm_vq_config (struct kvm_device_desc const*) ;

__attribute__((used)) static u8 *kvm_vq_features(const struct kvm_device_desc *desc)
{
 return (u8 *)(kvm_vq_config(desc) + desc->num_vq);
}
