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

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  NETX_PFIFO_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pfifo_lock ; 
 unsigned int pfifo_used ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 

int FUNC4(unsigned int pfifo_mask)
{
	int err = 0;
	unsigned int val;

	FUNC0(&pfifo_lock);

	if (pfifo_mask & pfifo_used) {
		err = -EBUSY;
		goto out;
	}

	pfifo_used |= pfifo_mask;

	val = FUNC2(NETX_PFIFO_RESET);
	FUNC3(val | pfifo_mask, NETX_PFIFO_RESET);
	FUNC3(val, NETX_PFIFO_RESET);

out:
	FUNC1(&pfifo_lock);
	return err;
}