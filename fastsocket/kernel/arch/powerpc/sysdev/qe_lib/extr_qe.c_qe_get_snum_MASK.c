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
struct TYPE_2__ {scalar_t__ state; int num; } ;

/* Variables and functions */
 int EBUSY ; 
 scalar_t__ QE_SNUM_STATE_FREE ; 
 scalar_t__ QE_SNUM_STATE_USED ; 
 int /*<<< orphan*/  qe_lock ; 
 int qe_num_of_snum ; 
 TYPE_1__* snums ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC2(void)
{
	unsigned long flags;
	int snum = -EBUSY;
	int i;

	FUNC0(&qe_lock, flags);
	for (i = 0; i < qe_num_of_snum; i++) {
		if (snums[i].state == QE_SNUM_STATE_FREE) {
			snums[i].state = QE_SNUM_STATE_USED;
			snum = snums[i].num;
			break;
		}
	}
	FUNC1(&qe_lock, flags);

	return snum;
}