#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ ** rx_pool; } ;
typedef  TYPE_1__ pegasus_t ;

/* Variables and functions */
 scalar_t__ PEGASUS_MTU ; 
 int RX_SKBS ; 
 int /*<<< orphan*/ * FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC2(pegasus_t * pegasus)
{
	int i;

	for (i = 0; i < RX_SKBS; i++) {
		if (pegasus->rx_pool[i])
			continue;
		pegasus->rx_pool[i] = FUNC0(PEGASUS_MTU + 2);
		/*
		 ** we give up if the allocation fail. the tasklet will be
		 ** rescheduled again anyway...
		 */
		if (pegasus->rx_pool[i] == NULL)
			return;
		FUNC1(pegasus->rx_pool[i], 2);
	}
}