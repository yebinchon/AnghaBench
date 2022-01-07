
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct kvm_device_desc {int feature_len; } ;


 int * kvm_vq_features (struct kvm_device_desc const*) ;

__attribute__((used)) static u8 *kvm_vq_configspace(const struct kvm_device_desc *desc)
{
 return kvm_vq_features(desc) + desc->feature_len * 2;
}
