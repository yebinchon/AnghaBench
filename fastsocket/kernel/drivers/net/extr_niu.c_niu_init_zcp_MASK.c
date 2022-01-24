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
typedef  scalar_t__ u64 ;
struct niu {int port; TYPE_1__* parent; } ;
struct TYPE_2__ {scalar_t__ plat_type; } ;

/* Variables and functions */
 int ATLAS_P0_P1_CFIFO_ENTRIES ; 
 int ATLAS_P2_P3_CFIFO_ENTRIES ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int NIU_CFIFO_ENTRIES ; 
 scalar_t__ PLAT_TYPE_NIU ; 
 int /*<<< orphan*/  ZCP_INT_MASK ; 
 int /*<<< orphan*/  ZCP_INT_MASK_ALL ; 
 int /*<<< orphan*/  ZCP_INT_STAT ; 
 int /*<<< orphan*/  ZCP_INT_STAT_ALL ; 
 int /*<<< orphan*/  FUNC1 (struct niu*) ; 
 int FUNC2 (struct niu*,int,scalar_t__*) ; 
 int FUNC3 (struct niu*,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct niu *np)
{
	u64 data[5], rbuf[5];
	int i, max, err;

	if (np->parent->plat_type != PLAT_TYPE_NIU) {
		if (np->port == 0 || np->port == 1)
			max = ATLAS_P0_P1_CFIFO_ENTRIES;
		else
			max = ATLAS_P2_P3_CFIFO_ENTRIES;
	} else
		max = NIU_CFIFO_ENTRIES;

	data[0] = 0;
	data[1] = 0;
	data[2] = 0;
	data[3] = 0;
	data[4] = 0;

	for (i = 0; i < max; i++) {
		err = FUNC3(np, i, data);
		if (err)
			return err;
		err = FUNC2(np, i, rbuf);
		if (err)
			return err;
	}

	FUNC1(np);
	FUNC5(FUNC0(np->port), 0);
	FUNC5(ZCP_INT_STAT, ZCP_INT_STAT_ALL);
	(void) FUNC4(ZCP_INT_STAT);
	FUNC5(ZCP_INT_MASK, ZCP_INT_MASK_ALL);

	return 0;
}