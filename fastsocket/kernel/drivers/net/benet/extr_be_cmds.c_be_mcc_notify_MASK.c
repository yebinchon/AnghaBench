#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct be_queue_info {int id; } ;
struct TYPE_2__ {struct be_queue_info q; } ;
struct be_adapter {scalar_t__ db; TYPE_1__ mcc_obj; } ;

/* Variables and functions */
 int DB_MCCQ_NUM_POSTED_SHIFT ; 
 scalar_t__ DB_MCCQ_OFFSET ; 
 int DB_MCCQ_RING_ID_MASK ; 
 scalar_t__ FUNC0 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void FUNC3(struct be_adapter *adapter)
{
	struct be_queue_info *mccq = &adapter->mcc_obj.q;
	u32 val = 0;

	if (FUNC0(adapter))
		return;

	val |= mccq->id & DB_MCCQ_RING_ID_MASK;
	val |= 1 << DB_MCCQ_NUM_POSTED_SHIFT;

	FUNC2();
	FUNC1(val, adapter->db + DB_MCCQ_OFFSET);
}