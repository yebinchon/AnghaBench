#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int mapsz; struct ipath_fmr** map; } ;
struct ipath_fmr {TYPE_1__ mr; } ;
struct ib_fmr {int /*<<< orphan*/  lkey; int /*<<< orphan*/  device; } ;
struct TYPE_4__ {int /*<<< orphan*/  lk_table; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ipath_fmr*) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ) ; 
 struct ipath_fmr* FUNC3 (struct ib_fmr*) ; 

int FUNC4(struct ib_fmr *ibfmr)
{
	struct ipath_fmr *fmr = FUNC3(ibfmr);
	int i;

	FUNC0(&FUNC2(ibfmr->device)->lk_table, ibfmr->lkey);
	i = fmr->mr.mapsz;
	while (i)
		FUNC1(fmr->mr.map[--i]);
	FUNC1(fmr);
	return 0;
}