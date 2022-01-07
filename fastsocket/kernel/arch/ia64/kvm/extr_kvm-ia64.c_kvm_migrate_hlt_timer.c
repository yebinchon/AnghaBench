
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hrtimer {int dummy; } ;
struct TYPE_2__ {struct hrtimer hlt_timer; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int HRTIMER_MODE_ABS ;
 scalar_t__ hrtimer_cancel (struct hrtimer*) ;
 int hrtimer_start_expires (struct hrtimer*,int ) ;

__attribute__((used)) static void kvm_migrate_hlt_timer(struct kvm_vcpu *vcpu)
{
 struct hrtimer *p_ht = &vcpu->arch.hlt_timer;

 if (hrtimer_cancel(p_ht))
  hrtimer_start_expires(p_ht, HRTIMER_MODE_ABS);
}
