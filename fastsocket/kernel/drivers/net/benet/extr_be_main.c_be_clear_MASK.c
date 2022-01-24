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
struct be_adapter {int uc_macs; int /*<<< orphan*/ * pmac_id; int /*<<< orphan*/  if_handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct be_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct be_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct be_adapter*) ; 

__attribute__((used)) static int FUNC8(struct be_adapter *adapter)
{
	int i;

	FUNC0(adapter);

	if (FUNC7(adapter))
		FUNC5(adapter);

	/* delete the primary mac along with the uc-mac list */
	for (i = 0; i < (adapter->uc_macs + 1); i++)
		FUNC3(adapter, adapter->if_handle,
				adapter->pmac_id[i], 0);
	adapter->uc_macs = 0;

	FUNC2(adapter, adapter->if_handle,  0);

	FUNC1(adapter);

	FUNC6(adapter->pmac_id);
	adapter->pmac_id = NULL;

	FUNC4(adapter);
	return 0;
}