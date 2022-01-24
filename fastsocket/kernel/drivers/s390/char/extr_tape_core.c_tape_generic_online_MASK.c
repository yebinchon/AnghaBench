#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tape_discipline {int (* setup_device ) (struct tape_device*) ;int /*<<< orphan*/  owner; int /*<<< orphan*/  (* cleanup_device ) (struct tape_device*) ;} ;
struct TYPE_2__ {int /*<<< orphan*/  function; } ;
struct tape_device {scalar_t__ tape_state; scalar_t__ cdev_id; struct tape_discipline* discipline; TYPE_1__ lb_timeout; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,scalar_t__,...) ; 
 int EINVAL ; 
 scalar_t__ TS_INIT ; 
 int /*<<< orphan*/  TS_UNUSED ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct tape_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct tape_device*) ; 
 int FUNC5 (struct tape_device*) ; 
 int /*<<< orphan*/  tape_long_busy_timeout ; 
 int /*<<< orphan*/  FUNC6 (struct tape_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct tape_device*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct tape_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct tape_device*) ; 
 int FUNC10 (struct tape_device*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

int
FUNC12(struct tape_device *device,
		   struct tape_discipline *discipline)
{
	int rc;

	FUNC0(6, "tape_enable_device(%p, %p)\n", device, discipline);

	if (device->tape_state != TS_INIT) {
		FUNC0(3, "Tapestate not INIT (%d)\n", device->tape_state);
		return -EINVAL;
	}

	FUNC1(&device->lb_timeout);
	device->lb_timeout.function = tape_long_busy_timeout;

	/* Let the discipline have a go at the device. */
	device->discipline = discipline;
	if (!FUNC11(discipline->owner)) {
		return -EINVAL;
	}

	rc = discipline->setup_device(device);
	if (rc)
		goto out;
	rc = FUNC5(device);
	if (rc)
		goto out_discipline;

	rc = FUNC10(device);
	if (rc)
		goto out_minor;
	rc = FUNC8(device);
	if (rc)
		goto out_char;

	FUNC7(device, TS_UNUSED);

	FUNC0(3, "(%08x): Drive set online\n", device->cdev_id);

	return 0;

out_char:
	FUNC9(device);
out_minor:
	FUNC6(device);
out_discipline:
	device->discipline->cleanup_device(device);
	device->discipline = NULL;
out:
	FUNC2(discipline->owner);
	return rc;
}