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
typedef  scalar_t__ u64 ;
struct ehea_eq {int /*<<< orphan*/  fw_handle; int /*<<< orphan*/  adapter; int /*<<< orphan*/  epas; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FORCE_FREE ; 
 scalar_t__ H_R_STATE ; 
 scalar_t__ H_SUCCESS ; 
 int /*<<< orphan*/  NORMAL_FREE ; 
 scalar_t__ FUNC0 (struct ehea_eq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct ehea_eq *eq)
{
	u64 hret, aer, aerr;
	if (!eq)
		return 0;

	FUNC3(&eq->epas);

	hret = FUNC0(eq, NORMAL_FREE);
	if (hret == H_R_STATE) {
		FUNC2(eq->adapter, eq->fw_handle, &aer, &aerr);
		hret = FUNC0(eq, FORCE_FREE);
	}

	if (hret != H_SUCCESS) {
		FUNC1("destroy EQ failed");
		return -EIO;
	}

	return 0;
}