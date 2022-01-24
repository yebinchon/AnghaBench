#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int size; unsigned long count; unsigned long cur_count; unsigned int port; int in; int string; int down; int rep; int /*<<< orphan*/  guest_gva; } ;
struct TYPE_9__ {TYPE_3__ pio; } ;
struct kvm_vcpu {TYPE_4__ arch; TYPE_2__* run; } ;
typedef  int /*<<< orphan*/  gva_t ;
struct TYPE_10__ {int /*<<< orphan*/  (* skip_emulated_instruction ) (struct kvm_vcpu*) ;} ;
struct TYPE_6__ {int size; int data_offset; unsigned long count; unsigned int port; int /*<<< orphan*/  direction; } ;
struct TYPE_7__ {TYPE_1__ io; int /*<<< orphan*/  exit_reason; } ;

/* Variables and functions */
 int /*<<< orphan*/  KVM_EXIT_IO ; 
 int /*<<< orphan*/  KVM_EXIT_IO_IN ; 
 int /*<<< orphan*/  KVM_EXIT_IO_OUT ; 
 int KVM_PIO_PAGE_OFFSET ; 
 int PAGE_SIZE ; 
 int X86EMUL_PROPAGATE_FAULT ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 TYPE_5__* kvm_x86_ops ; 
 unsigned int FUNC2 (unsigned long,unsigned long) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm_vcpu*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC8 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC9 (int,unsigned int,int,unsigned long) ; 

int FUNC10(struct kvm_vcpu *vcpu, int in,
		  int size, unsigned long count, int down,
		  gva_t address, int rep, unsigned port)
{
	unsigned now, in_page;
	int ret = 0;

	FUNC9(!in, port, size, count);

	vcpu->run->exit_reason = KVM_EXIT_IO;
	vcpu->run->io.direction = in ? KVM_EXIT_IO_IN : KVM_EXIT_IO_OUT;
	vcpu->run->io.size = vcpu->arch.pio.size = size;
	vcpu->run->io.data_offset = KVM_PIO_PAGE_OFFSET * PAGE_SIZE;
	vcpu->run->io.count = vcpu->arch.pio.count = vcpu->arch.pio.cur_count = count;
	vcpu->run->io.port = vcpu->arch.pio.port = port;
	vcpu->arch.pio.in = in;
	vcpu->arch.pio.string = 1;
	vcpu->arch.pio.down = down;
	vcpu->arch.pio.rep = rep;

	if (!count) {
		kvm_x86_ops->skip_emulated_instruction(vcpu);
		return 1;
	}

	if (!down)
		in_page = PAGE_SIZE - FUNC3(address);
	else
		in_page = FUNC3(address) + size;
	now = FUNC2(count, (unsigned long)in_page / size);
	if (!now)
		now = 1;
	if (down) {
		/*
		 * String I/O in reverse.  Yuck.  Kill the guest, fix later.
		 */
		FUNC6(vcpu, "guest string pio down\n");
		FUNC1(vcpu, 0);
		return 1;
	}
	vcpu->run->io.count = now;
	vcpu->arch.pio.cur_count = now;

	if (vcpu->arch.pio.cur_count == vcpu->arch.pio.count)
		kvm_x86_ops->skip_emulated_instruction(vcpu);

	vcpu->arch.pio.guest_gva = address;

	if (!vcpu->arch.pio.in) {
		/* string PIO write */
		ret = FUNC4(vcpu);
		if (ret == X86EMUL_PROPAGATE_FAULT)
			return 1;
		if (ret == 0 && !FUNC5(vcpu)) {
			FUNC0(vcpu);
			if (vcpu->arch.pio.count == 0)
				ret = 1;
		}
	}
	/* no string PIO read support yet */

	return ret;
}