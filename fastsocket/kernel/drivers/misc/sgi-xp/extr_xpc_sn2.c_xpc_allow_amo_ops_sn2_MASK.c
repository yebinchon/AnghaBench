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
struct amo {int dummy; } ;
typedef  enum xp_retval { ____Placeholder_xp_retval } xp_retval ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int xpSuccess ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum xp_retval
FUNC3(struct amo *amos_page)
{
	enum xp_retval ret = xpSuccess;

	/*
	 * On SHUB 1.1, we cannot call sn_change_memprotect() since the BIST
	 * collides with memory operations. On those systems we call
	 * xpc_allow_amo_ops_shub_wars_1_1_sn2() instead.
	 */
	if (!FUNC0())
		ret = FUNC2(FUNC1((u64)amos_page), PAGE_SIZE);

	return ret;
}