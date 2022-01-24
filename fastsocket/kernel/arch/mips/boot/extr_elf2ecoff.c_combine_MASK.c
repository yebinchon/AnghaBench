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
struct sect {scalar_t__ len; scalar_t__ vaddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC2(struct sect *base, struct sect *new, int pad)
{
	if (!base->len)
		*base = *new;
	else if (new->len) {
		if (base->vaddr + base->len != new->vaddr) {
			if (pad)
				base->len = new->vaddr - base->vaddr;
			else {
				FUNC1(stderr,
					"Non-contiguous data can't be converted.\n");
				FUNC0(1);
			}
		}
		base->len += new->len;
	}
}