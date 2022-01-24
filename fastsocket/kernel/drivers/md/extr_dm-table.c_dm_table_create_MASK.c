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
struct mapped_device {int dummy; } ;
struct dm_table {struct mapped_device* md; int /*<<< orphan*/  mode; int /*<<< orphan*/  holders; int /*<<< orphan*/  target_callbacks; int /*<<< orphan*/  devices; } ;
typedef  int /*<<< orphan*/  fmode_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned int KEYS_PER_NODE ; 
 scalar_t__ FUNC1 (struct dm_table*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct dm_table*) ; 
 struct dm_table* FUNC5 (int,int /*<<< orphan*/ ) ; 

int FUNC6(struct dm_table **result, fmode_t mode,
		    unsigned num_targets, struct mapped_device *md)
{
	struct dm_table *t = FUNC5(sizeof(*t), GFP_KERNEL);

	if (!t)
		return -ENOMEM;

	FUNC0(&t->devices);
	FUNC0(&t->target_callbacks);
	FUNC2(&t->holders, 0);

	if (!num_targets)
		num_targets = KEYS_PER_NODE;

	num_targets = FUNC3(num_targets, KEYS_PER_NODE);

	if (FUNC1(t, num_targets)) {
		FUNC4(t);
		return -ENOMEM;
	}

	t->mode = mode;
	t->md = md;
	*result = t;
	return 0;
}