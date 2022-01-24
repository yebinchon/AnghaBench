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
struct be_adapter {int /*<<< orphan*/  cfg_num_qs; int /*<<< orphan*/  pmac_id; int /*<<< orphan*/  asic_rev; int /*<<< orphan*/  function_caps; int /*<<< orphan*/  function_mode; int /*<<< orphan*/  port_num; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct be_adapter*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct be_adapter*) ; 
 scalar_t__ FUNC3 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct be_adapter *adapter)
{
	int status;

	status = FUNC0(adapter, &adapter->port_num,
				     &adapter->function_mode,
				     &adapter->function_caps,
				     &adapter->asic_rev);
	if (status)
		return status;

	status = FUNC1(adapter);
	if (status)
		return status;

	/* primary mac needs 1 pmac entry */
	adapter->pmac_id = FUNC4(FUNC3(adapter) + 1, sizeof(u32),
				   GFP_KERNEL);
	if (!adapter->pmac_id)
		return -ENOMEM;

	/* Sanitize cfg_num_qs based on HW and platform limits */
	adapter->cfg_num_qs = FUNC5(adapter->cfg_num_qs, FUNC2(adapter));

	return 0;
}