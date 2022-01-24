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
struct frame_tail {struct frame_tail* fp; int /*<<< orphan*/  lr; } ;
typedef  int /*<<< orphan*/  buftail ;

/* Variables and functions */
 int /*<<< orphan*/  VERIFY_READ ; 
 scalar_t__ FUNC0 (struct frame_tail*,struct frame_tail*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct frame_tail*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct frame_tail* FUNC3(struct frame_tail *tail)
{
	struct frame_tail buftail[2];

	/* Also check accessibility of one struct frame_tail beyond */
	if (!FUNC1(VERIFY_READ, tail, sizeof(buftail)))
		return NULL;
	if (FUNC0(buftail, tail, sizeof(buftail)))
		return NULL;

	FUNC2(buftail[0].lr);

	/* frame pointers should strictly progress back up the stack
	 * (towards higher addresses) */
	if (tail >= buftail[0].fp)
		return NULL;

	return buftail[0].fp-1;
}