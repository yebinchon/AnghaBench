
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ pad; int masked; int pending; int injected; } ;
struct TYPE_11__ {scalar_t__ pad; int soft; int nr; int injected; } ;
struct TYPE_8__ {int error_code; scalar_t__ pad; int has_error_code; int nr; int injected; } ;
struct kvm_vcpu_events {int flags; int reserved; int sipi_vector; TYPE_5__ nmi; TYPE_4__ interrupt; TYPE_1__ exception; } ;
struct TYPE_10__ {int soft; int nr; int pending; } ;
struct TYPE_9__ {int error_code; int has_error_code; int nr; int pending; } ;
struct TYPE_13__ {int sipi_vector; int nmi_pending; int nmi_injected; TYPE_3__ interrupt; TYPE_2__ exception; } ;
struct kvm_vcpu {TYPE_6__ arch; } ;
struct TYPE_14__ {int (* get_nmi_mask ) (struct kvm_vcpu*) ;} ;


 int KVM_VCPUEVENT_VALID_NMI_PENDING ;
 int KVM_VCPUEVENT_VALID_SIPI_VECTOR ;
 TYPE_7__* kvm_x86_ops ;
 int memset (int *,int ,int) ;
 int stub1 (struct kvm_vcpu*) ;
 int vcpu_load (struct kvm_vcpu*) ;
 int vcpu_put (struct kvm_vcpu*) ;

__attribute__((used)) static void kvm_vcpu_ioctl_x86_get_vcpu_events(struct kvm_vcpu *vcpu,
            struct kvm_vcpu_events *events)
{
 vcpu_load(vcpu);

 events->exception.injected = vcpu->arch.exception.pending;
 events->exception.nr = vcpu->arch.exception.nr;
 events->exception.has_error_code = vcpu->arch.exception.has_error_code;
 events->exception.pad = 0;
 events->exception.error_code = vcpu->arch.exception.error_code;

 events->interrupt.injected = vcpu->arch.interrupt.pending;
 events->interrupt.nr = vcpu->arch.interrupt.nr;
 events->interrupt.soft = vcpu->arch.interrupt.soft;
 events->interrupt.pad = 0;

 events->nmi.injected = vcpu->arch.nmi_injected;
 events->nmi.pending = vcpu->arch.nmi_pending;
 events->nmi.masked = kvm_x86_ops->get_nmi_mask(vcpu);
 events->nmi.pad = 0;

 events->sipi_vector = vcpu->arch.sipi_vector;

 events->flags = (KVM_VCPUEVENT_VALID_NMI_PENDING
    | KVM_VCPUEVENT_VALID_SIPI_VECTOR);

 memset(&events->reserved, 0, sizeof(events->reserved));
 vcpu_put(vcpu);
}
