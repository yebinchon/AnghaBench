
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm_vcpu {int dummy; } ;


 int USEC_PER_SEC ;
 int do_div (int,int ) ;
 int vcpu_tsc_khz (struct kvm_vcpu*) ;

__attribute__((used)) static inline u64 nsec_to_cycles(struct kvm_vcpu *vcpu, u64 nsec)
{
 u64 ret;

 ret = nsec * vcpu_tsc_khz(vcpu);
 do_div(ret, USEC_PER_SEC);
 return ret;
}
