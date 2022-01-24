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
typedef  int /*<<< orphan*/  u64 ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 long IA64_PSR_IC ; 
 long FUNC0 (struct kvm_vcpu*,long) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 

void FUNC6(struct kvm_vcpu *vcpu, u64 vadr,
		int set_ifa, int set_itir, int set_iha)
{
	long vpsr;
	u64 value;

	vpsr = FUNC0(vcpu, vpsr);
	/* Vol2, Table 8-1 */
	if (vpsr & IA64_PSR_IC) {
		if (set_ifa)
			FUNC2(vcpu, vadr);
		if (set_itir) {
			value = FUNC1(vcpu, vadr);
			FUNC4(vcpu, value);
		}

		if (set_iha) {
			value = FUNC5(vcpu, vadr);
			FUNC3(vcpu, value);
		}
	}
}