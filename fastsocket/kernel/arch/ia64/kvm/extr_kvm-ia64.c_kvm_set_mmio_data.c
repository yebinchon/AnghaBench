
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int mmio_data; int mmio_is_write; } ;
struct kvm_mmio_req {int state; int data; } ;


 int STATE_IORESP_READY ;
 struct kvm_mmio_req* kvm_get_vcpu_ioreq (struct kvm_vcpu*) ;
 int memcpy (int *,int ,int) ;

__attribute__((used)) static void kvm_set_mmio_data(struct kvm_vcpu *vcpu)
{
 struct kvm_mmio_req *p = kvm_get_vcpu_ioreq(vcpu);

 if (!vcpu->mmio_is_write)
  memcpy(&p->data, vcpu->mmio_data, 8);
 p->state = STATE_IORESP_READY;
}
