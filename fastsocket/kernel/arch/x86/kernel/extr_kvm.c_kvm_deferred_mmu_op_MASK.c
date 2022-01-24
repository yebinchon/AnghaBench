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
struct kvm_para_state {int mmu_queue_len; int mmu_queue; } ;

/* Variables and functions */
 scalar_t__ PARAVIRT_LAZY_MMU ; 
 int /*<<< orphan*/  FUNC0 (void*,int) ; 
 struct kvm_para_state* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,void*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_para_state*) ; 
 scalar_t__ FUNC4 () ; 

__attribute__((used)) static void FUNC5(void *buffer, int len)
{
	struct kvm_para_state *state = FUNC1();

	if (FUNC4() != PARAVIRT_LAZY_MMU) {
		FUNC0(buffer, len);
		return;
	}
	if (state->mmu_queue_len + len > sizeof state->mmu_queue)
		FUNC3(state);
	FUNC2(state->mmu_queue + state->mmu_queue_len, buffer, len);
	state->mmu_queue_len += len;
}