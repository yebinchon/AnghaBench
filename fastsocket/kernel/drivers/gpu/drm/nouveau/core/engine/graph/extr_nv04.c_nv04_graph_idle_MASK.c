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
struct nouveau_graph {int dummy; } ;
struct TYPE_2__ {scalar_t__ card_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  NV04_PGRAPH_STATUS ; 
 int NV40_PGRAPH_STATUS_SYNC_STALL ; 
 scalar_t__ NV_40 ; 
 struct nouveau_graph* FUNC0 (void*) ; 
 TYPE_1__* FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (struct nouveau_graph*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nouveau_graph*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nouveau_graph*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

bool
FUNC5(void *obj)
{
	struct nouveau_graph *graph = FUNC0(obj);
	u32 mask = 0xffffffff;

	if (FUNC1(obj)->card_type == NV_40)
		mask &= ~NV40_PGRAPH_STATUS_SYNC_STALL;

	if (!FUNC4(graph, NV04_PGRAPH_STATUS, mask, 0)) {
		FUNC2(graph, "idle timed out with status 0x%08x\n",
			 FUNC3(graph, NV04_PGRAPH_STATUS));
		return false;
	}

	return true;
}