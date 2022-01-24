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
struct bnx2x {int num_ethernet_queues; scalar_t__ num_queues; scalar_t__ num_cnic_queues; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 scalar_t__ FUNC1 (struct bnx2x*) ; 
 scalar_t__ FUNC2 (struct bnx2x*) ; 
 scalar_t__ FUNC3 (struct bnx2x*) ; 
 int FUNC4 (struct bnx2x*) ; 

void FUNC5(struct bnx2x *bp)
{
	/* RSS queues */
	bp->num_ethernet_queues = FUNC4(bp);

	/* override in STORAGE SD modes */
	if (FUNC3(bp) || FUNC2(bp))
		bp->num_ethernet_queues = 1;

	/* Add special queues */
	bp->num_cnic_queues = FUNC1(bp); /* For FCOE */
	bp->num_queues = bp->num_ethernet_queues + bp->num_cnic_queues;

	FUNC0("set number of queues to %d\n", bp->num_queues);
}