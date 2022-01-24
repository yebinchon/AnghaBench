#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  io_exits; } ;
struct kvm_vcpu {TYPE_1__ stat; } ;

/* Variables and functions */
 scalar_t__ EMULATE_DO_MMIO ; 
 int /*<<< orphan*/  EXIT_QUALIFICATION ; 
 scalar_t__ FUNC0 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct kvm_vcpu*,int,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct kvm_vcpu *vcpu)
{
	unsigned long exit_qualification;
	int size, in, string;
	unsigned port;

	++vcpu->stat.io_exits;
	exit_qualification = FUNC3(EXIT_QUALIFICATION);
	string = (exit_qualification & 16) != 0;

	if (string) {
		if (FUNC0(vcpu, 0) == EMULATE_DO_MMIO)
			return 0;
		return 1;
	}

	size = (exit_qualification & 7) + 1;
	in = (exit_qualification & 8) != 0;
	port = exit_qualification >> 16;

	FUNC2(vcpu);
	return FUNC1(vcpu, in, size, port);
}