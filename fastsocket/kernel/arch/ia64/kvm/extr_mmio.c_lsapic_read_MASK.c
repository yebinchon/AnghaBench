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
typedef  unsigned long uint64_t ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
#define  PIB_OFST_INTA 129 
#define  PIB_OFST_XTP 128 
 int PIB_SIZE ; 
 unsigned long FUNC0 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*,char*) ; 

unsigned long FUNC2(struct kvm_vcpu *v, unsigned long addr,
		unsigned long length)
{
	uint64_t result = 0;

	addr &= (PIB_SIZE - 1);

	switch (addr) {
	case PIB_OFST_INTA:
		if (length == 1) /* 1 byte load */
			; /* There is no i8259, there is no INTA access*/
		else
			FUNC1(v, "Undefined read on PIB INTA\n");

		break;
	case PIB_OFST_XTP:
		if (length == 1) {
			result = FUNC0(v);
		} else {
			FUNC1(v, "Undefined read on PIB XTP\n");
		}
		break;
	default:
		FUNC1(v, "Undefined addr access for lsapic!\n");
		break;
	}
	return result;
}