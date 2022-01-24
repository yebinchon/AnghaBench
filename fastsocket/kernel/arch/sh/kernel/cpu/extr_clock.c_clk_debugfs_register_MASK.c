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
struct clk {int /*<<< orphan*/  dentry; struct clk* parent; } ;

/* Variables and functions */
 int FUNC0 (struct clk*) ; 

__attribute__((used)) static int FUNC1(struct clk *c)
{
	int err;
	struct clk *pa = c->parent;

	if (pa && !pa->dentry) {
		err = FUNC1(pa);
		if (err)
			return err;
	}

	if (!c->dentry) {
		err = FUNC0(c);
		if (err)
			return err;
	}
	return 0;
}