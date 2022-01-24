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
typedef  int u32 ;
struct kvm_kpit_state {int speaker_data_on; int /*<<< orphan*/  lock; } ;
struct kvm_pit {struct kvm* kvm; struct kvm_kpit_state pit_state; } ;
struct kvm_io_device {int dummy; } ;
struct kvm {int dummy; } ;
typedef  scalar_t__ gpa_t ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 scalar_t__ KVM_SPEAKER_BASE_ADDRESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm*,int,int) ; 
 struct kvm_pit* FUNC3 (struct kvm_io_device*) ; 

__attribute__((used)) static int FUNC4(struct kvm_io_device *this,
				gpa_t addr, int len, const void *data)
{
	struct kvm_pit *pit = FUNC3(this);
	struct kvm_kpit_state *pit_state = &pit->pit_state;
	struct kvm *kvm = pit->kvm;
	u32 val = *(u32 *) data;
	if (addr != KVM_SPEAKER_BASE_ADDRESS)
		return -EOPNOTSUPP;

	FUNC0(&pit_state->lock);
	pit_state->speaker_data_on = (val >> 1) & 1;
	FUNC2(kvm, 2, val & 1);
	FUNC1(&pit_state->lock);
	return 0;
}