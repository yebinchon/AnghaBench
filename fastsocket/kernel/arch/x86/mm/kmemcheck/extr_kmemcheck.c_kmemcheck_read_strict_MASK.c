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
struct pt_regs {int dummy; } ;
typedef  enum kmemcheck_shadow { ____Placeholder_kmemcheck_shadow } kmemcheck_shadow ;

/* Variables and functions */
 int KMEMCHECK_SHADOW_INITIALIZED ; 
 int kmemcheck_enabled ; 
 int /*<<< orphan*/  FUNC0 (int,unsigned long,unsigned int,struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 void* FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (void*,unsigned int) ; 
 int FUNC4 (void*,unsigned int) ; 

__attribute__((used)) static void FUNC5(struct pt_regs *regs,
	unsigned long addr, unsigned int size)
{
	void *shadow;
	enum kmemcheck_shadow status;

	shadow = FUNC2(addr);
	if (!shadow)
		return;

	FUNC1(addr);
	status = FUNC4(shadow, size);
	if (status == KMEMCHECK_SHADOW_INITIALIZED)
		return;

	if (kmemcheck_enabled)
		FUNC0(status, addr, size, regs);

	if (kmemcheck_enabled == 2)
		kmemcheck_enabled = 0;

	/* Don't warn about it again. */
	FUNC3(shadow, size);
}