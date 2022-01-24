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
struct pstore {int valid; int /*<<< orphan*/  metadata_wq; int /*<<< orphan*/ * callbacks; int /*<<< orphan*/  pending_count; scalar_t__ callback_count; scalar_t__ current_committed; scalar_t__ next_free; int /*<<< orphan*/ * header_area; int /*<<< orphan*/ * zero_area; int /*<<< orphan*/ * area; int /*<<< orphan*/  version; struct dm_exception_store* store; } ;
struct dm_exception_store {struct pstore* context; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ NUM_SNAPSHOT_HDR_CHUNKS ; 
 int /*<<< orphan*/  SNAPSHOT_DISK_VERSION ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct pstore*) ; 
 struct pstore* FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct dm_exception_store *store,
			  unsigned argc, char **argv)
{
	struct pstore *ps;

	/* allocate the pstore */
	ps = FUNC4(sizeof(*ps), GFP_KERNEL);
	if (!ps)
		return -ENOMEM;

	ps->store = store;
	ps->valid = 1;
	ps->version = SNAPSHOT_DISK_VERSION;
	ps->area = NULL;
	ps->zero_area = NULL;
	ps->header_area = NULL;
	ps->next_free = NUM_SNAPSHOT_HDR_CHUNKS + 1; /* header and 1st area */
	ps->current_committed = 0;

	ps->callback_count = 0;
	FUNC1(&ps->pending_count, 0);
	ps->callbacks = NULL;

	ps->metadata_wq = FUNC2("ksnaphd");
	if (!ps->metadata_wq) {
		FUNC3(ps);
		FUNC0("couldn't start header metadata update thread");
		return -ENOMEM;
	}

	store->context = ps;

	return 0;
}