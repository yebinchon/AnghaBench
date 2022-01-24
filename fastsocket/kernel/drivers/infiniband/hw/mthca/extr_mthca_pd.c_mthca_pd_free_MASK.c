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
struct mthca_pd {int /*<<< orphan*/  pd_num; int /*<<< orphan*/  ntmr; scalar_t__ privileged; } ;
struct TYPE_2__ {int /*<<< orphan*/  alloc; } ;
struct mthca_dev {TYPE_1__ pd_table; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mthca_dev*,int /*<<< orphan*/ *) ; 

void FUNC2(struct mthca_dev *dev, struct mthca_pd *pd)
{
	if (pd->privileged)
		FUNC1(dev, &pd->ntmr);
	FUNC0(&dev->pd_table.alloc, pd->pd_num);
}