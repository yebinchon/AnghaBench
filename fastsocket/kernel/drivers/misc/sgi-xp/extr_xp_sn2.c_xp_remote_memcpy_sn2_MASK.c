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
typedef  enum xp_retval { ____Placeholder_xp_retval } xp_retval ;
typedef  scalar_t__ bte_result_t ;

/* Variables and functions */
 int BTE_NOTIFY ; 
 scalar_t__ BTE_SUCCESS ; 
 int BTE_WACQUIRE ; 
 scalar_t__ FUNC0 (unsigned long const,unsigned long,size_t,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__,unsigned long,unsigned long const,size_t) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  xp ; 
 int xpBteCopyError ; 
 int xpSuccess ; 

__attribute__((used)) static enum xp_retval
FUNC3(unsigned long dst_pa, const unsigned long src_pa,
		     size_t len)
{
	bte_result_t ret;

	ret = FUNC0(src_pa, dst_pa, len, (BTE_NOTIFY | BTE_WACQUIRE), NULL);
	if (ret == BTE_SUCCESS)
		return xpSuccess;

	if (FUNC2()) {
		FUNC1(xp, "bte_copy() on shub2 failed, error=0x%x dst_pa="
			"0x%016lx src_pa=0x%016lx len=%ld\\n", ret, dst_pa,
			src_pa, len);
	} else {
		FUNC1(xp, "bte_copy() failed, error=%d dst_pa=0x%016lx "
			"src_pa=0x%016lx len=%ld\\n", ret, dst_pa, src_pa, len);
	}

	return xpBteCopyError;
}