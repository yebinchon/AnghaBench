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
struct xpc_partition {scalar_t__ act_state; int reason; } ;
typedef  enum xp_retval { ____Placeholder_xp_retval } xp_retval ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t FUNC1 (unsigned long const) ; 
 int /*<<< orphan*/  FUNC2 (struct xpc_partition*) ; 
 scalar_t__ XPC_P_AS_DEACTIVATING ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int xpSuccess ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int FUNC5 (int /*<<< orphan*/ ,unsigned long const,size_t) ; 
 int /*<<< orphan*/  xpc_chan ; 

__attribute__((used)) static enum xp_retval
FUNC6(struct xpc_partition *part, void *dst,
			       const unsigned long src_pa, size_t cnt)
{
	enum xp_retval ret;

	FUNC0(src_pa != FUNC1(src_pa));
	FUNC0((unsigned long)dst != FUNC1((unsigned long)dst));
	FUNC0(cnt != FUNC1(cnt));

	if (part->act_state == XPC_P_AS_DEACTIVATING)
		return part->reason;

	ret = FUNC5(FUNC4(dst), src_pa, cnt);
	if (ret != xpSuccess) {
		FUNC3(xpc_chan, "xp_remote_memcpy() from partition %d failed,"
			" ret=%d\n", FUNC2(part), ret);
	}
	return ret;
}