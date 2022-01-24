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
struct hash_cell {int /*<<< orphan*/  name; struct mapped_device* md; } ;
struct dm_ioctl {int /*<<< orphan*/  flags; int /*<<< orphan*/  event_nr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  DM_UEVENT_GENERATED_FLAG ; 
 int ENXIO ; 
 int /*<<< orphan*/  KOBJ_REMOVE ; 
 struct hash_cell* FUNC1 (struct dm_ioctl*) ; 
 int /*<<< orphan*/  FUNC2 (struct hash_cell*) ; 
 int /*<<< orphan*/  _hash_lock ; 
 int /*<<< orphan*/  FUNC3 (struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct mapped_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct dm_ioctl *param, size_t param_size)
{
	struct hash_cell *hc;
	struct mapped_device *md;
	int r;

	FUNC7(&_hash_lock);
	hc = FUNC1(param);

	if (!hc) {
		FUNC0("device doesn't appear to be in the dev hash table.");
		FUNC8(&_hash_lock);
		return -ENXIO;
	}

	md = hc->md;

	/*
	 * Ensure the device is not open and nothing further can open it.
	 */
	r = FUNC5(md);
	if (r) {
		FUNC0("unable to remove open device %s", hc->name);
		FUNC8(&_hash_lock);
		FUNC6(md);
		return r;
	}

	FUNC2(hc);
	FUNC8(&_hash_lock);

	if (!FUNC4(md, KOBJ_REMOVE, param->event_nr))
		param->flags |= DM_UEVENT_GENERATED_FLAG;

	FUNC6(md);
	FUNC3(md);
	return 0;
}