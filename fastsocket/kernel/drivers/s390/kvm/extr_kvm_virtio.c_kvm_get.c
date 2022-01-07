
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virtio_device {int dummy; } ;
struct kvm_device_desc {unsigned int config_len; } ;
struct TYPE_2__ {struct kvm_device_desc* desc; } ;


 int BUG_ON (int) ;
 scalar_t__ kvm_vq_configspace (struct kvm_device_desc*) ;
 int memcpy (void*,scalar_t__,unsigned int) ;
 TYPE_1__* to_kvmdev (struct virtio_device*) ;

__attribute__((used)) static void kvm_get(struct virtio_device *vdev, unsigned int offset,
     void *buf, unsigned len)
{
 struct kvm_device_desc *desc = to_kvmdev(vdev)->desc;

 BUG_ON(offset + len > desc->config_len);
 memcpy(buf, kvm_vq_configspace(desc) + offset, len);
}
