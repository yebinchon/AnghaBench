#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct bnx2x {int dummy; } ;
struct TYPE_6__ {TYPE_1__* port_hw_config; } ;
struct TYPE_5__ {int /*<<< orphan*/  func_cfg; } ;
struct TYPE_4__ {int /*<<< orphan*/  generic_features; } ;

/* Variables and functions */
 int FUNC0 (struct bnx2x*) ; 
 int FUNC1 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*) ; 
 scalar_t__ FUNC3 (struct bnx2x*) ; 
 scalar_t__ FUNC4 (struct bnx2x*) ; 
 int MACP_FUNC_CFG_PAUSE_ON_HOST_RING ; 
 int FUNC5 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int PORT_HW_CFG_PAUSE_ON_HOST_RING_ENABLED ; 
 int FUNC6 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 TYPE_3__ dev_info ; 
 TYPE_2__* func_ext_config ; 

__attribute__((used)) static bool FUNC7(struct bnx2x *bp)
{
	int tmp;
	u32 cfg;

	if (FUNC4(bp))
		return 0;

	if (FUNC3(bp) && !FUNC2(bp)) {
		/* Take function: tmp = func */
		tmp = FUNC0(bp);
		cfg = FUNC5(bp, func_ext_config[tmp].func_cfg);
		cfg = !!(cfg & MACP_FUNC_CFG_PAUSE_ON_HOST_RING);
	} else {
		/* Take port: tmp = port */
		tmp = FUNC1(bp);
		cfg = FUNC6(bp,
			       dev_info.port_hw_config[tmp].generic_features);
		cfg = !!(cfg & PORT_HW_CFG_PAUSE_ON_HOST_RING_ENABLED);
	}
	return cfg;
}