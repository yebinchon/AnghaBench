
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u64 ;
struct pvclock_vcpu_time_info {int flags; } ;
struct TYPE_10__ {scalar_t__ tsc_timestamp; int version; int flags; scalar_t__ system_time; int tsc_to_system_mul; int tsc_shift; } ;
struct kvm_vcpu_arch {scalar_t__ last_guest_tsc; scalar_t__ last_kernel_ns; unsigned long hw_tsc_khz; unsigned long long time; int pvclock_set_guest_stopped_request; TYPE_3__ hv_clock; int pv_time; int pv_time_enabled; scalar_t__ tsc_catchup; } ;
struct kvm_vcpu {TYPE_2__* kvm; int requests; struct kvm_vcpu_arch arch; } ;
typedef scalar_t__ s64 ;
typedef int guest_hv_clock ;
typedef unsigned long long gpa_t ;
struct TYPE_8__ {scalar_t__ kvmclock_offset; } ;
struct TYPE_9__ {TYPE_1__ arch; } ;


 int EFAULT ;
 int KVM_REQ_CLOCK_UPDATE ;
 int MSR_IA32_TSC ;
 int NSEC_PER_SEC ;
 int PAGE_SIZE ;
 int PVCLOCK_GUEST_STOPPED ;
 int adjust_tsc_offset_guest (struct kvm_vcpu*,scalar_t__) ;
 scalar_t__ compute_guest_tsc (struct kvm_vcpu*,scalar_t__) ;
 scalar_t__ get_kernel_ns () ;
 int kvm_get_msr (struct kvm_vcpu*,int ,scalar_t__*) ;
 int kvm_get_time_scale (int,unsigned long,int *,int *) ;
 int kvm_read_guest (TYPE_2__*,unsigned long long,struct pvclock_vcpu_time_info*,int) ;
 int kvm_read_guest_cached (TYPE_2__*,int *,struct pvclock_vcpu_time_info*,int) ;
 int kvm_write_guest (TYPE_2__*,unsigned long long,TYPE_3__*,int) ;
 int kvm_write_guest_cached (TYPE_2__*,int *,TYPE_3__*,int) ;
 scalar_t__ likely (int) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int offset_in_page (unsigned long long) ;
 scalar_t__ pvclock_scale_delta (scalar_t__,int ,int ) ;
 int set_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;
 unsigned long vcpu_tsc_khz (struct kvm_vcpu*) ;

__attribute__((used)) static int kvm_guest_time_update(struct kvm_vcpu *v)
{
 unsigned long flags;
 struct kvm_vcpu_arch *vcpu = &v->arch;
 unsigned long this_tsc_khz;
 s64 kernel_ns, max_kernel_ns;
 u64 tsc_timestamp;
 struct pvclock_vcpu_time_info guest_hv_clock;
 u8 pvclock_flags;
 bool use_cached_fc;
 gpa_t time;


 local_irq_save(flags);
 kvm_get_msr(v, MSR_IA32_TSC, &tsc_timestamp);
 kernel_ns = get_kernel_ns();
 this_tsc_khz = vcpu_tsc_khz(v);

 if (unlikely(this_tsc_khz == 0)) {
  local_irq_restore(flags);
  set_bit(KVM_REQ_CLOCK_UPDATE, &v->requests);
  return 1;
 }
 if (vcpu->tsc_catchup) {
  u64 tsc = compute_guest_tsc(v, kernel_ns);
  if (tsc > tsc_timestamp) {
   adjust_tsc_offset_guest(v, tsc - tsc_timestamp);
   tsc_timestamp = tsc;
  }
 }

 local_irq_restore(flags);

 if (!vcpu->pv_time_enabled)
  return 0;
 max_kernel_ns = 0;
 if (vcpu->hv_clock.tsc_timestamp && vcpu->last_guest_tsc) {
  max_kernel_ns = vcpu->last_guest_tsc -
    vcpu->hv_clock.tsc_timestamp;
  max_kernel_ns = pvclock_scale_delta(max_kernel_ns,
        vcpu->hv_clock.tsc_to_system_mul,
        vcpu->hv_clock.tsc_shift);
  max_kernel_ns += vcpu->last_kernel_ns;
 }

 if (unlikely(vcpu->hw_tsc_khz != this_tsc_khz)) {
  kvm_get_time_scale(NSEC_PER_SEC / 1000, this_tsc_khz,
       &vcpu->hv_clock.tsc_shift,
       &vcpu->hv_clock.tsc_to_system_mul);
  vcpu->hw_tsc_khz = this_tsc_khz;
 }

 if (max_kernel_ns > kernel_ns)
  kernel_ns = max_kernel_ns;


 vcpu->hv_clock.tsc_timestamp = tsc_timestamp;
 vcpu->hv_clock.system_time = kernel_ns + v->kvm->arch.kvmclock_offset;
 vcpu->last_kernel_ns = kernel_ns;
 vcpu->last_guest_tsc = tsc_timestamp;







 vcpu->hv_clock.version += 2;

 time = vcpu->time & ~1ULL;
 use_cached_fc = sizeof(guest_hv_clock) <= (PAGE_SIZE -
    offset_in_page(time));

 if (likely(use_cached_fc)) {
  if (unlikely(kvm_read_guest_cached(v->kvm, &vcpu->pv_time,
    &guest_hv_clock, sizeof(guest_hv_clock))))
   return -EFAULT;
 } else if (unlikely(kvm_read_guest(v->kvm, time,
    &guest_hv_clock, sizeof(guest_hv_clock))))
   return -EFAULT;


 pvclock_flags = (guest_hv_clock.flags & PVCLOCK_GUEST_STOPPED);

 if (vcpu->pvclock_set_guest_stopped_request) {
  pvclock_flags |= PVCLOCK_GUEST_STOPPED;
  vcpu->pvclock_set_guest_stopped_request = 0;
 }

 vcpu->hv_clock.flags = pvclock_flags;

 if (likely(use_cached_fc))
  kvm_write_guest_cached(v->kvm, &vcpu->pv_time,
     &vcpu->hv_clock,
     sizeof(vcpu->hv_clock));
 else
  kvm_write_guest(v->kvm, time, &vcpu->hv_clock,
    sizeof(guest_hv_clock));

 return 0;
}
