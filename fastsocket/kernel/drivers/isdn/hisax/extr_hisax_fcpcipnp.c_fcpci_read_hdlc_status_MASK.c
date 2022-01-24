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
struct fritz_adapter {int /*<<< orphan*/  hw_lock; scalar_t__ io; } ;

/* Variables and functions */
 scalar_t__ AVM_DATA ; 
 int AVM_IDX_HDLC_1 ; 
 int AVM_IDX_HDLC_2 ; 
 scalar_t__ AVM_INDEX ; 
 scalar_t__ HDLC_STATUS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static u32 FUNC4(struct fritz_adapter *adapter, int nr)
{
	u32 val;
	int idx = nr ? AVM_IDX_HDLC_2 : AVM_IDX_HDLC_1;
	unsigned long flags;

	FUNC2(&adapter->hw_lock, flags);
	FUNC1(idx, adapter->io + AVM_INDEX);
	val = FUNC0(adapter->io + AVM_DATA + HDLC_STATUS);
	FUNC3(&adapter->hw_lock, flags);
	return val;
}