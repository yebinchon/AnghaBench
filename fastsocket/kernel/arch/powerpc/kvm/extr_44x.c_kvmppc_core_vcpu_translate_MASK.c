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
typedef  int u8 ;
struct kvm_vcpu {int dummy; } ;
struct kvm_translation {int linear_address; int valid; int /*<<< orphan*/  physical_address; } ;
typedef  int gva_t ;

/* Variables and functions */
 int FUNC0 (struct kvm_vcpu*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*,int,int) ; 

int FUNC2(struct kvm_vcpu *vcpu,
                               struct kvm_translation *tr)
{
	int index;
	gva_t eaddr;
	u8 pid;
	u8 as;

	eaddr = tr->linear_address;
	pid = (tr->linear_address >> 32) & 0xff;
	as = (tr->linear_address >> 40) & 0x1;

	index = FUNC0(vcpu, eaddr, pid, as);
	if (index == -1) {
		tr->valid = 0;
		return 0;
	}

	tr->physical_address = FUNC1(vcpu, index, eaddr);
	/* XXX what does "writeable" and "usermode" even mean? */
	tr->valid = 1;

	return 0;
}