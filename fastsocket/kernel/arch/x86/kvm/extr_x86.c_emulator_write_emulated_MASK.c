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
 unsigned long PAGE_MASK ; 
 int X86EMUL_CONTINUE ; 
 int FUNC0 (unsigned long,void const*,unsigned int,struct kvm_vcpu*) ; 

int FUNC1(unsigned long addr,
				   const void *val,
				   unsigned int bytes,
				   struct kvm_vcpu *vcpu)
{
	/* Crossing a page boundary? */
	if (((addr + bytes - 1) ^ addr) & PAGE_MASK) {
		int rc, now;

		now = -addr & ~PAGE_MASK;
		rc = FUNC0(addr, val, now, vcpu);
		if (rc != X86EMUL_CONTINUE)
			return rc;
		addr += now;
		val += now;
		bytes -= now;
	}
	return FUNC0(addr, val, bytes, vcpu);
}