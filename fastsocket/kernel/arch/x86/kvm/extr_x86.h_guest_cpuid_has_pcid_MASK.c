#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct kvm_vcpu {int dummy; } ;
struct kvm_cpuid_entry2 {int ecx; } ;

/* Variables and functions */
 int /*<<< orphan*/  X86_FEATURE_PCID ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct kvm_cpuid_entry2* FUNC1 (struct kvm_vcpu*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool FUNC2(struct kvm_vcpu *vcpu)
{
	struct kvm_cpuid_entry2 *best;

	best = FUNC1(vcpu, 1, 0);
	return best && (best->ecx & FUNC0(X86_FEATURE_PCID));
}