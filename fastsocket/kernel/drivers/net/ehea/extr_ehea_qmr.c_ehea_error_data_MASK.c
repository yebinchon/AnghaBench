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
struct ehea_adapter {int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR_DATA_TYPE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned long H_R_STATE ; 
 unsigned long H_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

u64 FUNC6(struct ehea_adapter *adapter, u64 res_handle,
		    u64 *aer, u64 *aerr)
{
	unsigned long ret;
	u64 *rblock;
	u64 type = 0;

	rblock = (void *)FUNC4(GFP_KERNEL);
	if (!rblock) {
		FUNC1("Cannot allocate rblock memory.");
		goto out;
	}

	ret = FUNC2(adapter->handle, res_handle, rblock);

	if (ret == H_SUCCESS) {
		type = FUNC0(ERROR_DATA_TYPE, rblock[2]);
		*aer = rblock[6];
		*aerr = rblock[12];
		FUNC5(rblock);
	} else if (ret == H_R_STATE) {
		FUNC1("No error data available: %llX.", res_handle);
	} else
		FUNC1("Error data could not be fetched: %llX", res_handle);

	FUNC3((unsigned long)rblock);
out:
	return type;
}