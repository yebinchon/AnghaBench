#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int alignment; } ;
typedef  TYPE_1__ rh_info_t ;
struct TYPE_10__ {unsigned long start; int size; int /*<<< orphan*/ * owner; } ;
typedef  TYPE_2__ rh_block_t ;

/* Variables and functions */
 int ERANGE ; 
 scalar_t__ FUNC0 (unsigned long) ; 
 int FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_2__*) ; 
 TYPE_2__* FUNC3 (TYPE_1__*) ; 

int FUNC4(rh_info_t * info, unsigned long start, int size)
{
	rh_block_t *blk;
	unsigned long s, e, m;
	int r;

	/* The region must be aligned */
	s = start;
	e = s + size;
	m = info->alignment - 1;

	/* Round start up */
	s = (s + m) & ~m;

	/* Round end down */
	e = e & ~m;

	if (FUNC0(e) || (e < s))
		return -ERANGE;

	/* Take final values */
	start = s;
	size = e - s;

	/* Grow the blocks, if needed */
	r = FUNC1(info, 1);
	if (r < 0)
		return r;

	blk = FUNC3(info);
	blk->start = start;
	blk->size = size;
	blk->owner = NULL;

	FUNC2(info, blk);

	return 0;
}