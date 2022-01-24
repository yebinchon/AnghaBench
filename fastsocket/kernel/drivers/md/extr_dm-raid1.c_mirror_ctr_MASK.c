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
struct mirror_set {unsigned int nr_mirrors; int /*<<< orphan*/  kmirrord_wq; int /*<<< orphan*/  kcopyd_client; int /*<<< orphan*/  trigger_event; scalar_t__ timer_pending; int /*<<< orphan*/  timer; int /*<<< orphan*/  kmirrord_work; int /*<<< orphan*/  rh; } ;
struct dm_target {char* error; int num_flush_requests; int num_discard_requests; int discard_zeroes_data_unsupported; struct mirror_set* private; } ;
struct dm_dirty_log {TYPE_1__* type; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* get_region_size ) (struct dm_dirty_log*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int DM_KCOPYD_MAX_REGIONS ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 struct mirror_set* FUNC4 (unsigned int,int /*<<< orphan*/ ,struct dm_target*,struct dm_dirty_log*) ; 
 struct dm_dirty_log* FUNC5 (struct dm_target*,unsigned int,char**,unsigned int*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct dm_dirty_log*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dm_kcopyd_throttle ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (struct dm_target*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  do_mirror ; 
 int /*<<< orphan*/  FUNC12 (struct mirror_set*,struct dm_target*,unsigned int) ; 
 int FUNC13 (struct mirror_set*,struct dm_target*,unsigned int,char**) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (struct mirror_set*,unsigned int,char**,unsigned int*) ; 
 int FUNC16 (char*,char*,unsigned int*,char*) ; 
 int /*<<< orphan*/  FUNC17 (struct dm_dirty_log*) ; 
 int /*<<< orphan*/  trigger_event ; 
 int /*<<< orphan*/  FUNC18 (struct mirror_set*) ; 

__attribute__((used)) static int FUNC19(struct dm_target *ti, unsigned int argc, char **argv)
{
	int r;
	unsigned int nr_mirrors, m, args_used;
	struct mirror_set *ms;
	struct dm_dirty_log *dl;
	char dummy;

	dl = FUNC5(ti, argc, argv, &args_used);
	if (!dl)
		return -EINVAL;

	argv += args_used;
	argc -= args_used;

	if (!argc || FUNC16(argv[0], "%u%c", &nr_mirrors, &dummy) != 1 ||
	    nr_mirrors < 2 || nr_mirrors > DM_KCOPYD_MAX_REGIONS + 1) {
		ti->error = "Invalid number of mirrors";
		FUNC8(dl);
		return -EINVAL;
	}

	argv++, argc--;

	if (argc < nr_mirrors * 2) {
		ti->error = "Too few mirror arguments";
		FUNC8(dl);
		return -EINVAL;
	}

	ms = FUNC4(nr_mirrors, dl->type->get_region_size(dl), ti, dl);
	if (!ms) {
		FUNC8(dl);
		return -ENOMEM;
	}

	/* Get the mirror parameter sets */
	for (m = 0; m < nr_mirrors; m++) {
		r = FUNC13(ms, ti, m, argv);
		if (r) {
			FUNC12(ms, ti, m);
			return r;
		}
		argv += 2;
		argc -= 2;
	}

	ti->private = ms;

	r = FUNC11(ti, FUNC10(ms->rh));
	if (r)
		goto err_free_context;

	ti->num_flush_requests = 1;
	ti->num_discard_requests = 1;
	ti->discard_zeroes_data_unsupported = 1;

	ms->kmirrord_wq = FUNC6("kmirrord");
	if (!ms->kmirrord_wq) {
		FUNC0("couldn't start kmirrord");
		r = -ENOMEM;
		goto err_free_context;
	}
	FUNC1(&ms->kmirrord_work, do_mirror);
	FUNC14(&ms->timer);
	ms->timer_pending = 0;
	FUNC1(&ms->trigger_event, trigger_event);

	r = FUNC15(ms, argc, argv, &args_used);
	if (r)
		goto err_destroy_wq;

	argv += args_used;
	argc -= args_used;

	/*
	 * Any read-balancing addition depends on the
	 * DM_RAID1_HANDLE_ERRORS flag being present.
	 * This is because the decision to balance depends
	 * on the sync state of a region.  If the above
	 * flag is not present, we ignore errors; and
	 * the sync state may be inaccurate.
	 */

	if (argc) {
		ti->error = "Too many mirror arguments";
		r = -EINVAL;
		goto err_destroy_wq;
	}

	ms->kcopyd_client = FUNC9(&dm_kcopyd_throttle);
	if (FUNC2(ms->kcopyd_client)) {
		r = FUNC3(ms->kcopyd_client);
		goto err_destroy_wq;
	}

	FUNC18(ms);
	return 0;

err_destroy_wq:
	FUNC7(ms->kmirrord_wq);
err_free_context:
	FUNC12(ms, ti, ms->nr_mirrors);
	return r;
}