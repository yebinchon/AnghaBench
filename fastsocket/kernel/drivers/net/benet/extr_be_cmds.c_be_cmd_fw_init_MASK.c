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
typedef  int u8 ;
struct be_adapter {int /*<<< orphan*/  mbox_lock; } ;

/* Variables and functions */
 int FUNC0 (struct be_adapter*) ; 
 scalar_t__ FUNC1 (struct be_adapter*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct be_adapter*) ; 

int FUNC5(struct be_adapter *adapter)
{
	u8 *wrb;
	int status;

	if (FUNC1(adapter))
		return 0;

	if (FUNC2(&adapter->mbox_lock))
		return -1;

	wrb = (u8 *)FUNC4(adapter);
	*wrb++ = 0xFF;
	*wrb++ = 0x12;
	*wrb++ = 0x34;
	*wrb++ = 0xFF;
	*wrb++ = 0xFF;
	*wrb++ = 0x56;
	*wrb++ = 0x78;
	*wrb = 0xFF;

	status = FUNC0(adapter);

	FUNC3(&adapter->mbox_lock);
	return status;
}