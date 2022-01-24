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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
#define  PIB_OFST_INTA 129 
#define  PIB_OFST_XTP 128 
 int PIB_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*,unsigned long) ; 

void FUNC4(struct kvm_vcpu *v, unsigned long addr,
			unsigned long length, unsigned long val)
{
	addr &= (PIB_SIZE - 1);

	switch (addr) {
	case PIB_OFST_INTA:
		FUNC1(v, "Undefined write on PIB INTA\n");
		break;
	case PIB_OFST_XTP:
		if (length == 1) {
			FUNC3(v, val);
		} else {
			FUNC1(v, "Undefined write on PIB XTP\n");
		}
		break;
	default:
		if (FUNC0(addr)) {
			/*Lower half */
			if (length != 8)
				FUNC1(v, "Can't LHF write with size %ld!\n",
						length);
			else
				FUNC2(v, addr, val);
		} else {   /*Upper half */
			FUNC1(v, "IPI-UHF write %lx\n", addr);
		}
		break;
	}
}