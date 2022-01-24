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
typedef  int /*<<< orphan*/  u32 ;
struct x86_emulate_ctxt {int /*<<< orphan*/  vcpu; } ;
struct msr_data {int host_initiated; int /*<<< orphan*/  index; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,struct msr_data*) ; 

__attribute__((used)) static int FUNC1(struct x86_emulate_ctxt *ctxt,
			    u32 msr_index, u64 data)
{
	struct msr_data msr;

	msr.data = data;
	msr.index = msr_index;
	msr.host_initiated = false;
	return FUNC0(ctxt->vcpu, &msr);
}