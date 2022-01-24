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
struct t3cdev {int dummy; } ;
struct l2t_entry {int /*<<< orphan*/  refcnt; } ;
struct l2t_data {int dummy; } ;

/* Variables and functions */
 struct l2t_data* FUNC0 (struct t3cdev*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct l2t_data*,struct l2t_entry*) ; 

__attribute__((used)) static inline void FUNC5(struct t3cdev *t, struct l2t_entry *e)
{
	struct l2t_data *d;

	FUNC2();
	d = FUNC0(t);

	if (FUNC1(&e->refcnt) && d)
		FUNC4(d, e);

	FUNC3();
}