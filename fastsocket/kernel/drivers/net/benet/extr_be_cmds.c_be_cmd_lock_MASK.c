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
struct be_adapter {int /*<<< orphan*/  mbox_lock; int /*<<< orphan*/  mcc_lock; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct be_adapter*) ; 

__attribute__((used)) static int FUNC3(struct be_adapter *adapter)
{
	if (FUNC2(adapter)) {
		FUNC1(&adapter->mcc_lock);
		return 0;
	} else {
		return FUNC0(&adapter->mbox_lock);
	}
}