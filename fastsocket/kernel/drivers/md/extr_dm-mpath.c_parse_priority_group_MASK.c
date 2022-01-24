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
struct priority_group {unsigned int nr_pgpaths; int /*<<< orphan*/  pgpaths; int /*<<< orphan*/  ps; struct multipath* m; } ;
struct pgpath {int /*<<< orphan*/  list; struct priority_group* pg; } ;
struct multipath {struct dm_target* ti; } ;
struct dm_target {char* error; } ;
struct dm_arg_set {int argc; int /*<<< orphan*/  argv; } ;
struct dm_arg {int member_0; int member_1; char* member_2; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 struct priority_group* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct pgpath*) ; 
 int FUNC2 (struct pgpath*) ; 
 struct priority_group* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct dm_arg_set*,unsigned int) ; 
 int FUNC5 (struct dm_arg*,struct dm_arg_set*,unsigned int*,char**) ; 
 int /*<<< orphan*/  FUNC6 (struct priority_group*,struct dm_target*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct pgpath* FUNC8 (struct dm_arg_set*,int /*<<< orphan*/ *,struct dm_target*) ; 
 int FUNC9 (struct dm_arg_set*,struct priority_group*,struct dm_target*) ; 

__attribute__((used)) static struct priority_group *FUNC10(struct dm_arg_set *as,
						   struct multipath *m)
{
	static struct dm_arg _args[] = {
		{1, 1024, "invalid number of paths"},
		{0, 1024, "invalid number of selector args"}
	};

	int r;
	unsigned i, nr_selector_args, nr_args;
	struct priority_group *pg;
	struct dm_target *ti = m->ti;

	if (as->argc < 2) {
		as->argc = 0;
		ti->error = "not enough priority group arguments";
		return FUNC0(-EINVAL);
	}

	pg = FUNC3();
	if (!pg) {
		ti->error = "couldn't allocate priority group";
		return FUNC0(-ENOMEM);
	}
	pg->m = m;

	r = FUNC9(as, pg, ti);
	if (r)
		goto bad;

	/*
	 * read the paths
	 */
	r = FUNC5(_args, as, &pg->nr_pgpaths, &ti->error);
	if (r)
		goto bad;

	r = FUNC5(_args + 1, as, &nr_selector_args, &ti->error);
	if (r)
		goto bad;

	nr_args = 1 + nr_selector_args;
	for (i = 0; i < pg->nr_pgpaths; i++) {
		struct pgpath *pgpath;
		struct dm_arg_set path_args;

		if (as->argc < nr_args) {
			ti->error = "not enough path parameters";
			r = -EINVAL;
			goto bad;
		}

		path_args.argc = nr_args;
		path_args.argv = as->argv;

		pgpath = FUNC8(&path_args, &pg->ps, ti);
		if (FUNC1(pgpath)) {
			r = FUNC2(pgpath);
			goto bad;
		}

		pgpath->pg = pg;
		FUNC7(&pgpath->list, &pg->pgpaths);
		FUNC4(as, nr_args);
	}

	return pg;

 bad:
	FUNC6(pg, ti);
	return FUNC0(r);
}