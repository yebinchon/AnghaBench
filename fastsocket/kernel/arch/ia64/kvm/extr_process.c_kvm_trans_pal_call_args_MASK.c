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
struct thash_data {unsigned long page_flags; unsigned long gpaddr; int /*<<< orphan*/  ps; } ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_TLB ; 
 unsigned long FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned long _PAGE_PPN_MASK ; 
 scalar_t__ FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*) ; 
 unsigned long FUNC4 (unsigned long) ; 
 struct thash_data* FUNC5 (unsigned long) ; 
 struct thash_data* FUNC6 (struct kvm_vcpu*,unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned long FUNC7(struct kvm_vcpu *vcpu,
						unsigned long arg)
{
	struct thash_data *data;
	unsigned long gpa, poff;

	if (!FUNC3(vcpu)) {
		/* Depends on caller to provide the DTR or DTC mapping.*/
		data = FUNC6(vcpu, arg, D_TLB);
		if (data)
			gpa = data->page_flags & _PAGE_PPN_MASK;
		else {
			data = FUNC5(arg);
			if (!data)
				return 0;
			gpa = data->gpaddr & _PAGE_PPN_MASK;
		}

		poff = arg & (FUNC1(data->ps) - 1);
		arg = FUNC0(gpa, data->ps) | poff;
	}
	arg = FUNC4(arg << 1 >> 1);

	return (unsigned long)FUNC2(arg);
}