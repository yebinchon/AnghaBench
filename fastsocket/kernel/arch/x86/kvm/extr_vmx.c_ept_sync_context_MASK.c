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

/* Variables and functions */
 int /*<<< orphan*/  VMX_EPT_EXTENT_CONTEXT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ enable_ept ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static inline void FUNC3(u64 eptp)
{
	if (enable_ept) {
		if (FUNC1())
			FUNC0(VMX_EPT_EXTENT_CONTEXT, eptp, 0);
		else
			FUNC2();
	}
}