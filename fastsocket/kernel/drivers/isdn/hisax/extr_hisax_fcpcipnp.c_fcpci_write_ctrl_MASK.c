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
struct fritz_bcs {struct fritz_adapter* adapter; } ;
struct fritz_adapter {int /*<<< orphan*/  hw_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fritz_bcs*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct fritz_bcs *bcs, int which)
{
	struct fritz_adapter *adapter = bcs->adapter;
	unsigned long flags;

	FUNC1(&adapter->hw_lock, flags);
	FUNC0(bcs, which);
	FUNC2(&adapter->hw_lock, flags);
}