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
struct vmcs {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct vmcs*) ; 
 int /*<<< orphan*/  vmm_exclusive ; 
 int /*<<< orphan*/  vmxarea ; 

__attribute__((used)) static inline void FUNC6(struct vmcs *vmcs)
{
	u64 phys_addr = FUNC0(FUNC3(vmxarea, FUNC4()));

	if (!vmm_exclusive)
		FUNC2(phys_addr);

	FUNC5(vmcs);

	if (!vmm_exclusive)
		FUNC1();
}