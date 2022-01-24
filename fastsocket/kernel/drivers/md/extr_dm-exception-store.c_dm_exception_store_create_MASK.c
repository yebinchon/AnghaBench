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
struct dm_target {char* error; } ;
struct dm_snapshot {int dummy; } ;
struct dm_exception_store_type {int (* ctr ) (struct dm_exception_store*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;
struct dm_exception_store {struct dm_snapshot* snap; struct dm_exception_store_type* type; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct dm_exception_store_type* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct dm_exception_store*) ; 
 struct dm_exception_store* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dm_exception_store_type*) ; 
 int FUNC4 (struct dm_exception_store*,char*,char**) ; 
 int FUNC5 (struct dm_exception_store*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char FUNC6 (char) ; 

int FUNC7(struct dm_target *ti, int argc, char **argv,
			      struct dm_snapshot *snap,
			      unsigned *args_used,
			      struct dm_exception_store **store)
{
	int r = 0;
	struct dm_exception_store_type *type = NULL;
	struct dm_exception_store *tmp_store;
	char persistent;

	if (argc < 2) {
		ti->error = "Insufficient exception store arguments";
		return -EINVAL;
	}

	tmp_store = FUNC2(sizeof(*tmp_store), GFP_KERNEL);
	if (!tmp_store) {
		ti->error = "Exception store allocation failed";
		return -ENOMEM;
	}

	persistent = FUNC6(*argv[0]);
	if (persistent == 'P')
		type = FUNC0("P");
	else if (persistent == 'N')
		type = FUNC0("N");
	else {
		ti->error = "Persistent flag is not P or N";
		r = -EINVAL;
		goto bad_type;
	}

	if (!type) {
		ti->error = "Exception store type not recognised";
		r = -EINVAL;
		goto bad_type;
	}

	tmp_store->type = type;
	tmp_store->snap = snap;

	r = FUNC4(tmp_store, argv[1], &ti->error);
	if (r)
		goto bad;

	r = type->ctr(tmp_store, 0, NULL);
	if (r) {
		ti->error = "Exception store type constructor failed";
		goto bad;
	}

	*args_used = 2;
	*store = tmp_store;
	return 0;

bad:
	FUNC3(type);
bad_type:
	FUNC1(tmp_store);
	return r;
}