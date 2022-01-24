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
struct pvscsi_adapter {int req_pages; int cmp_pages; int msg_pages; int /*<<< orphan*/  msgRingPA; scalar_t__ msg_ring; int /*<<< orphan*/  dev; int /*<<< orphan*/  cmpRingPA; scalar_t__ cmp_ring; int /*<<< orphan*/  reqRingPA; scalar_t__ req_ring; int /*<<< orphan*/  ringStatePA; scalar_t__ rings_state; scalar_t__ cmd_map; scalar_t__ mmioBase; scalar_t__ workqueue; } ;

/* Variables and functions */
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pvscsi_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct pvscsi_adapter*) ; 

__attribute__((used)) static void FUNC7(struct pvscsi_adapter *adapter)
{
	FUNC6(adapter);

	if (adapter->workqueue)
		FUNC0(adapter->workqueue);

	if (adapter->mmioBase)
		FUNC3(adapter->dev, adapter->mmioBase);

	FUNC4(adapter->dev);

	if (adapter->cmd_map) {
		FUNC5(adapter);
		FUNC1(adapter->cmd_map);
	}

	if (adapter->rings_state)
		FUNC2(adapter->dev, PAGE_SIZE,
				    adapter->rings_state, adapter->ringStatePA);

	if (adapter->req_ring)
		FUNC2(adapter->dev,
				    adapter->req_pages * PAGE_SIZE,
				    adapter->req_ring, adapter->reqRingPA);

	if (adapter->cmp_ring)
		FUNC2(adapter->dev,
				    adapter->cmp_pages * PAGE_SIZE,
				    adapter->cmp_ring, adapter->cmpRingPA);

	if (adapter->msg_ring)
		FUNC2(adapter->dev,
				    adapter->msg_pages * PAGE_SIZE,
				    adapter->msg_ring, adapter->msgRingPA);
}