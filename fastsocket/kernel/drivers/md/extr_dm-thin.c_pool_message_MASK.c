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
struct pool_c {struct pool* pool; } ;
struct pool {int dummy; } ;
struct dm_target {struct pool_c* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (struct pool*) ; 
 int FUNC2 (unsigned int,char**,struct pool*) ; 
 int FUNC3 (unsigned int,char**,struct pool*) ; 
 int FUNC4 (unsigned int,char**,struct pool*) ; 
 int FUNC5 (unsigned int,char**,struct pool*) ; 
 int FUNC6 (unsigned int,char**,struct pool*) ; 
 int FUNC7 (unsigned int,char**,struct pool*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 

__attribute__((used)) static int FUNC9(struct dm_target *ti, unsigned argc, char **argv)
{
	int r = -EINVAL;
	struct pool_c *pt = ti->private;
	struct pool *pool = pt->pool;

	if (!FUNC8(argv[0], "create_thin"))
		r = FUNC3(argc, argv, pool);

	else if (!FUNC8(argv[0], "create_snap"))
		r = FUNC2(argc, argv, pool);

	else if (!FUNC8(argv[0], "delete"))
		r = FUNC4(argc, argv, pool);

	else if (!FUNC8(argv[0], "set_transaction_id"))
		r = FUNC7(argc, argv, pool);

	else if (!FUNC8(argv[0], "reserve_metadata_snap"))
		r = FUNC6(argc, argv, pool);

	else if (!FUNC8(argv[0], "release_metadata_snap"))
		r = FUNC5(argc, argv, pool);

	else
		FUNC0("Unrecognised thin pool target message received: %s", argv[0]);

	if (!r)
		(void) FUNC1(pool);

	return r;
}