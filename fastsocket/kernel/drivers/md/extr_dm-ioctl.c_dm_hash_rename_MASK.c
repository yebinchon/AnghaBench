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
struct hash_cell {char const* uuid; struct mapped_device* md; } ;
struct dm_table {int dummy; } ;
struct dm_ioctl {int flags; char const* name; int /*<<< orphan*/  event_nr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,char const*,char const*) ; 
 int DM_UEVENT_GENERATED_FLAG ; 
 int DM_UUID_FLAG ; 
 int /*<<< orphan*/  EBUSY ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  ENXIO ; 
 struct mapped_device* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KOBJ_CHANGE ; 
 char* FUNC2 (struct hash_cell*,char*) ; 
 struct hash_cell* FUNC3 (char const*) ; 
 struct hash_cell* FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct hash_cell*,char*) ; 
 int /*<<< orphan*/  _hash_lock ; 
 struct dm_table* FUNC6 (struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct mapped_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct dm_table*) ; 
 int /*<<< orphan*/  FUNC10 (struct dm_table*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 char* FUNC13 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct mapped_device *FUNC15(struct dm_ioctl *param,
					    const char *new)
{
	char *new_data, *old_name = NULL;
	struct hash_cell *hc;
	struct dm_table *table;
	struct mapped_device *md;
	unsigned change_uuid = (param->flags & DM_UUID_FLAG) ? 1 : 0;

	/*
	 * duplicate new.
	 */
	new_data = FUNC13(new, GFP_KERNEL);
	if (!new_data)
		return FUNC1(-ENOMEM);

	FUNC11(&_hash_lock);

	/*
	 * Is new free ?
	 */
	if (change_uuid)
		hc = FUNC4(new);
	else
		hc = FUNC3(new);

	if (hc) {
		FUNC0("Unable to change %s on mapped device %s to one that "
		       "already exists: %s",
		       change_uuid ? "uuid" : "name",
		       param->name, new);
		FUNC8(hc->md);
		FUNC14(&_hash_lock);
		FUNC12(new_data);
		return FUNC1(-EBUSY);
	}

	/*
	 * Is there such a device as 'old' ?
	 */
	hc = FUNC3(param->name);
	if (!hc) {
		FUNC0("Unable to rename non-existent device, %s to %s%s",
		       param->name, change_uuid ? "uuid " : "", new);
		FUNC14(&_hash_lock);
		FUNC12(new_data);
		return FUNC1(-ENXIO);
	}

	/*
	 * Does this device already have a uuid?
	 */
	if (change_uuid && hc->uuid) {
		FUNC0("Unable to change uuid of mapped device %s to %s "
		       "because uuid is already set to %s",
		       param->name, new, hc->uuid);
		FUNC8(hc->md);
		FUNC14(&_hash_lock);
		FUNC12(new_data);
		return FUNC1(-EINVAL);
	}

	if (change_uuid)
		FUNC5(hc, new_data);
	else
		old_name = FUNC2(hc, new_data);

	/*
	 * Wake up any dm event waiters.
	 */
	table = FUNC6(hc->md);
	if (table) {
		FUNC9(table);
		FUNC10(table);
	}

	if (!FUNC7(hc->md, KOBJ_CHANGE, param->event_nr))
		param->flags |= DM_UEVENT_GENERATED_FLAG;

	md = hc->md;
	FUNC14(&_hash_lock);
	FUNC12(old_name);

	return md;
}