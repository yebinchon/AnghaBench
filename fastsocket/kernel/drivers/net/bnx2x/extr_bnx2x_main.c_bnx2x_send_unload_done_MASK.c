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
typedef  int /*<<< orphan*/  u32 ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bnx2x*) ; 
 int /*<<< orphan*/  DRV_MSG_CODE_UNLOAD_DONE ; 
 int /*<<< orphan*/  DRV_MSG_CODE_UNLOAD_SKIP_LINK_RESET ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(struct bnx2x *bp, bool keep_link)
{
	u32 reset_param = keep_link ? DRV_MSG_CODE_UNLOAD_SKIP_LINK_RESET : 0;

	/* Report UNLOAD_DONE to MCP */
	if (!FUNC0(bp))
		FUNC1(bp, DRV_MSG_CODE_UNLOAD_DONE, reset_param);
}