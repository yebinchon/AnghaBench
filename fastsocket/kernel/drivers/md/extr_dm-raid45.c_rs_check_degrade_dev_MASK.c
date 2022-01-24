#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct stripe {scalar_t__ key; } ;
struct TYPE_10__ {int /*<<< orphan*/  ws_do_table_event; } ;
struct TYPE_8__ {unsigned int raid_devs; unsigned int ei; TYPE_1__* raid_type; int /*<<< orphan*/  failed_devs; } ;
struct raid_set {TYPE_4__ io; TYPE_5__* dev; TYPE_2__ set; } ;
struct TYPE_11__ {TYPE_3__* dev; } ;
struct TYPE_9__ {int /*<<< orphan*/  bdev; } ;
struct TYPE_7__ {scalar_t__ parity_devs; } ;

/* Variables and functions */
 int BDEVNAME_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (struct raid_set*) ; 
 scalar_t__ FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (struct raid_set*) ; 
 int /*<<< orphan*/  FUNC5 (struct raid_set*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct raid_set *rs,
				 struct stripe *stripe, unsigned p)
{
	if (FUNC3(rs->dev + p))
		return;

	/* Through an event in case of member device errors. */
	if ((FUNC6(&rs->set.failed_devs) >
	     rs->set.raid_type->parity_devs) &&
	     !FUNC4(rs)) {
		/* Display RAID set dead message once. */
		unsigned p;
		char buf[BDEVNAME_SIZE];

		FUNC0("FATAL: too many devices failed -> RAID set broken");
		for (p = 0; p < rs->set.raid_devs; p++) {
			if (FUNC1(rs->dev + p))
				FUNC0("device /dev/%s failed",
				      FUNC7(rs->dev[p].dev->bdev, buf));
		}
	}

	/* Only log the first member error. */
	if (!FUNC5(rs)) {
		char buf[BDEVNAME_SIZE];

		/* Store index for recovery. */
		rs->set.ei = p;
		FUNC0("CRITICAL: %sio error on device /dev/%s "
		      "in region=%llu; DEGRADING RAID set\n",
		      stripe ? "" : "FAKED ",
		      FUNC7(rs->dev[p].dev->bdev, buf),
		      (unsigned long long) (stripe ? stripe->key : 0));
		FUNC0("further device error messages suppressed");
	}

	/* Prohibit further writes to allow for userpace to update metadata. */
	FUNC2(rs);
	FUNC8(&rs->io.ws_do_table_event);
}