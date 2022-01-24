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
struct target_type {int /*<<< orphan*/  name; } ;
struct mapped_device {int dummy; } ;
struct hash_cell {struct dm_table* new_map; struct mapped_device* md; } ;
struct dm_table {int dummy; } ;
struct dm_ioctl {int /*<<< orphan*/  flags; int /*<<< orphan*/  target_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  DM_INACTIVE_PRESENT_FLAG ; 
 scalar_t__ DM_TYPE_NONE ; 
 int EINVAL ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC1 (struct mapped_device*,struct dm_ioctl*) ; 
 int /*<<< orphan*/  _hash_lock ; 
 struct target_type* FUNC2 (struct mapped_device*) ; 
 scalar_t__ FUNC3 (struct mapped_device*) ; 
 struct hash_cell* FUNC4 (struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct mapped_device*,scalar_t__) ; 
 int FUNC8 (struct mapped_device*) ; 
 int FUNC9 (struct dm_table**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct dm_table*) ; 
 struct target_type* FUNC11 (struct dm_table*) ; 
 scalar_t__ FUNC12 (struct dm_table*) ; 
 int /*<<< orphan*/  FUNC13 (struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 struct mapped_device* FUNC15 (struct dm_ioctl*) ; 
 int /*<<< orphan*/  FUNC16 (struct dm_ioctl*) ; 
 int FUNC17 (struct dm_table*,struct dm_ioctl*,size_t) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC19(struct dm_ioctl *param, size_t param_size)
{
	int r;
	struct hash_cell *hc;
	struct dm_table *t;
	struct mapped_device *md;
	struct target_type *immutable_target_type;

	md = FUNC15(param);
	if (!md)
		return -ENXIO;

	r = FUNC9(&t, FUNC16(param), param->target_count, md);
	if (r)
		goto out;

	r = FUNC17(t, param, param_size);
	if (r) {
		FUNC10(t);
		goto out;
	}

	immutable_target_type = FUNC2(md);
	if (immutable_target_type &&
	    (immutable_target_type != FUNC11(t))) {
		FUNC0("can't replace immutable target type %s",
		       immutable_target_type->name);
		FUNC10(t);
		r = -EINVAL;
		goto out;
	}

	/* Protect md->type and md->queue against concurrent table loads. */
	FUNC5(md);
	if (FUNC3(md) == DM_TYPE_NONE)
		/* Initial table load: acquire type of table. */
		FUNC7(md, FUNC12(t));
	else if (FUNC3(md) != FUNC12(t)) {
		FUNC0("can't change device type after initial table load.");
		FUNC10(t);
		FUNC13(md);
		r = -EINVAL;
		goto out;
	}

	/* setup md->queue to reflect md's type (may block) */
	r = FUNC8(md);
	if (r) {
		FUNC0("unable to set up device queue for new table.");
		FUNC10(t);
		FUNC13(md);
		goto out;
	}
	FUNC13(md);

	/* stage inactive table */
	FUNC14(&_hash_lock);
	hc = FUNC4(md);
	if (!hc || hc->md != md) {
		FUNC0("device has been removed from the dev hash table.");
		FUNC10(t);
		FUNC18(&_hash_lock);
		r = -ENXIO;
		goto out;
	}

	if (hc->new_map)
		FUNC10(hc->new_map);
	hc->new_map = t;
	FUNC18(&_hash_lock);

	param->flags |= DM_INACTIVE_PRESENT_FLAG;
	FUNC1(md, param);

out:
	FUNC6(md);

	return r;
}