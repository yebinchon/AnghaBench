#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct dm_target {char* error; unsigned int num_flush_requests; struct dm_snapshot* private; int /*<<< orphan*/  table; } ;
struct dm_snapshot {int valid; int /*<<< orphan*/  origin; int /*<<< orphan*/  cow; TYPE_2__* store; int /*<<< orphan*/  complete; int /*<<< orphan*/  pending; int /*<<< orphan*/  kcopyd_client; void* pending_pool; void* tracked_chunk_pool; int /*<<< orphan*/  tracked_chunk_lock; int /*<<< orphan*/ * tracked_chunk_hash; int /*<<< orphan*/  bios_queued_during_merge; scalar_t__ num_merging_chunks; scalar_t__ first_merging_chunk; scalar_t__ merge_failed; scalar_t__ state_bits; int /*<<< orphan*/  pe_lock; int /*<<< orphan*/  list; int /*<<< orphan*/  lock; int /*<<< orphan*/  pending_exceptions_count; scalar_t__ active; struct dm_target* ti; } ;
typedef  int /*<<< orphan*/  fmode_t ;
struct TYPE_6__ {scalar_t__ chunk_size; TYPE_1__* type; } ;
struct TYPE_5__ {int (* read_metadata ) (TYPE_2__*,int /*<<< orphan*/ ,void*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int DM_TRACKED_CHUNK_HASH_SIZE ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FMODE_READ ; 
 int /*<<< orphan*/  FMODE_WRITE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MIN_IOS ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dm_add_exception ; 
 int FUNC7 (struct dm_target*,unsigned int,char**,struct dm_snapshot*,unsigned int*,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct dm_target*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dm_kcopyd_throttle ; 
 int /*<<< orphan*/  FUNC13 (struct dm_target*,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct dm_target*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (struct dm_target*) ; 
 int /*<<< orphan*/  exception_cache ; 
 scalar_t__ FUNC17 (struct dm_snapshot*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (struct dm_snapshot*) ; 
 struct dm_snapshot* FUNC20 (int,int /*<<< orphan*/ ) ; 
 void* FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (void*) ; 
 int /*<<< orphan*/  pending_cache ; 
 int FUNC23 (struct dm_snapshot*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int FUNC25 (TYPE_2__*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  tracked_chunk_cache ; 
 int /*<<< orphan*/  FUNC26 (struct dm_snapshot*) ; 

__attribute__((used)) static int FUNC27(struct dm_target *ti, unsigned int argc, char **argv)
{
	struct dm_snapshot *s;
	int i;
	int r = -EINVAL;
	char *origin_path, *cow_path;
	unsigned args_used, num_flush_requests = 1;
	fmode_t origin_mode = FMODE_READ;

	if (argc != 4) {
		ti->error = "requires exactly 4 arguments";
		r = -EINVAL;
		goto bad;
	}

	if (FUNC16(ti)) {
		num_flush_requests = 2;
		origin_mode = FMODE_WRITE;
	}

	s = FUNC20(sizeof(*s), GFP_KERNEL);
	if (!s) {
		ti->error = "Cannot allocate private snapshot structure";
		r = -ENOMEM;
		goto bad;
	}

	origin_path = argv[0];
	argv++;
	argc--;

	r = FUNC10(ti, origin_path, origin_mode, &s->origin);
	if (r) {
		ti->error = "Cannot get origin device";
		goto bad_origin;
	}

	cow_path = argv[0];
	argv++;
	argc--;

	r = FUNC10(ti, cow_path, FUNC15(ti->table), &s->cow);
	if (r) {
		ti->error = "Cannot get COW device";
		goto bad_cow;
	}

	r = FUNC7(ti, argc, argv, s, &args_used, &s->store);
	if (r) {
		ti->error = "Couldn't create exception store";
		r = -EINVAL;
		goto bad_store;
	}

	argv += args_used;
	argc -= args_used;

	s->ti = ti;
	s->valid = 1;
	s->active = 0;
	FUNC5(&s->pending_exceptions_count, 0);
	FUNC18(&s->lock);
	FUNC2(&s->list);
	FUNC24(&s->pe_lock);
	s->state_bits = 0;
	s->merge_failed = 0;
	s->first_merging_chunk = 0;
	s->num_merging_chunks = 0;
	FUNC6(&s->bios_queued_during_merge);

	/* Allocate hash table for COW data */
	if (FUNC17(s)) {
		ti->error = "Unable to allocate hash table space";
		r = -ENOMEM;
		goto bad_hash_tables;
	}

	s->kcopyd_client = FUNC11(&dm_kcopyd_throttle);
	if (FUNC3(s->kcopyd_client)) {
		r = FUNC4(s->kcopyd_client);
		ti->error = "Could not create kcopyd client";
		goto bad_kcopyd;
	}

	s->pending_pool = FUNC21(MIN_IOS, pending_cache);
	if (!s->pending_pool) {
		ti->error = "Could not allocate mempool for pending exceptions";
		r = -ENOMEM;
		goto bad_pending_pool;
	}

	s->tracked_chunk_pool = FUNC21(MIN_IOS,
							 tracked_chunk_cache);
	if (!s->tracked_chunk_pool) {
		ti->error = "Could not allocate tracked_chunk mempool for "
			    "tracking reads";
		goto bad_tracked_chunk_pool;
	}

	for (i = 0; i < DM_TRACKED_CHUNK_HASH_SIZE; i++)
		FUNC1(&s->tracked_chunk_hash[i]);

	FUNC24(&s->tracked_chunk_lock);

	ti->private = s;
	ti->num_flush_requests = num_flush_requests;

	/* Add snapshot to the list of snapshots for this origin */
	/* Exceptions aren't triggered till snapshot_resume() is called */
	r = FUNC23(s);
	if (r == -ENOMEM) {
		ti->error = "Snapshot origin struct allocation failed";
		goto bad_load_and_register;
	} else if (r < 0) {
		/* invalid handover, register_snapshot has set ti->error */
		goto bad_load_and_register;
	}

	/*
	 * Metadata must only be loaded into one table at once, so skip this
	 * if metadata will be handed over during resume.
	 * Chunk size will be set during the handover - set it to zero to
	 * ensure it's ignored.
	 */
	if (r > 0) {
		s->store->chunk_size = 0;
		return 0;
	}

	r = s->store->type->read_metadata(s->store, dm_add_exception,
					  (void *)s);
	if (r < 0) {
		ti->error = "Failed to read snapshot metadata";
		goto bad_read_metadata;
	} else if (r > 0) {
		s->valid = 0;
		FUNC0("Snapshot is marked invalid.");
	}

	if (!s->store->chunk_size) {
		ti->error = "Chunk size not set";
		goto bad_read_metadata;
	}

	r = FUNC14(ti, s->store->chunk_size);
	if (r)
		goto bad_read_metadata;

	return 0;

bad_read_metadata:
	FUNC26(s);

bad_load_and_register:
	FUNC22(s->tracked_chunk_pool);

bad_tracked_chunk_pool:
	FUNC22(s->pending_pool);

bad_pending_pool:
	FUNC12(s->kcopyd_client);

bad_kcopyd:
	FUNC9(&s->pending, pending_cache);
	FUNC9(&s->complete, exception_cache);

bad_hash_tables:
	FUNC8(s->store);

bad_store:
	FUNC13(ti, s->cow);

bad_cow:
	FUNC13(ti, s->origin);

bad_origin:
	FUNC19(s);

bad:
	return r;
}