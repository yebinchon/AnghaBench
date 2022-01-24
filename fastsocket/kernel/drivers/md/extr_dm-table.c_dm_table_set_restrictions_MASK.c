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
struct queue_limits {scalar_t__ discard_zeroes_data; scalar_t__ no_cluster; } ;
struct request_queue {struct queue_limits limits; } ;
struct dm_table {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  QUEUE_FLAG_ADD_RANDOM ; 
 int /*<<< orphan*/  QUEUE_FLAG_CLUSTER ; 
 int /*<<< orphan*/  QUEUE_FLAG_DISCARD ; 
 int /*<<< orphan*/  QUEUE_FLAG_NONROT ; 
 int /*<<< orphan*/  QUEUE_FLAG_STACKABLE ; 
 unsigned int REQ_FLUSH ; 
 unsigned int REQ_FUA ; 
 scalar_t__ FUNC0 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC1 (struct request_queue*,unsigned int) ; 
 int /*<<< orphan*/  device_is_nonrot ; 
 int /*<<< orphan*/  device_is_not_random ; 
 scalar_t__ FUNC2 (struct dm_table*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dm_table*) ; 
 scalar_t__ FUNC4 (struct dm_table*) ; 
 int /*<<< orphan*/  FUNC5 (struct dm_table*) ; 
 int /*<<< orphan*/  FUNC6 (struct dm_table*) ; 
 scalar_t__ FUNC7 (struct dm_table*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct request_queue*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct request_queue*) ; 
 int /*<<< orphan*/  FUNC10 () ; 

void FUNC11(struct dm_table *t, struct request_queue *q,
			       struct queue_limits *limits)
{
	unsigned flush = 0;

	/*
	 * Copy table's limits to the DM device's request_queue
	 */
	q->limits = *limits;

	if (limits->no_cluster)
		FUNC8(QUEUE_FLAG_CLUSTER, q);
	else
		FUNC9(QUEUE_FLAG_CLUSTER, q);

	if (!FUNC6(t))
		FUNC8(QUEUE_FLAG_DISCARD, q);
	else
		FUNC9(QUEUE_FLAG_DISCARD, q);

	if (FUNC7(t, REQ_FLUSH)) {
		flush |= REQ_FLUSH;
		if (FUNC7(t, REQ_FUA))
			flush |= REQ_FUA;
	}
	FUNC1(q, flush);

	if (!FUNC3(t))
		q->limits.discard_zeroes_data = 0;

	/* Ensure that all underlying devices are non-rotational. */
	if (FUNC2(t, device_is_nonrot))
		FUNC9(QUEUE_FLAG_NONROT, q);
	else
		FUNC8(QUEUE_FLAG_NONROT, q);

	FUNC5(t);

	/*
	 * Determine whether or not this queue's I/O timings contribute
	 * to the entropy pool, Only request-based targets use this.
	 * Clear QUEUE_FLAG_ADD_RANDOM if any underlying device does not
	 * have it set.
	 */
	if (FUNC0(q) && FUNC2(t, device_is_not_random))
		FUNC8(QUEUE_FLAG_ADD_RANDOM, q);

	/*
	 * QUEUE_FLAG_STACKABLE must be set after all queue settings are
	 * visible to other CPUs because, once the flag is set, incoming bios
	 * are processed by request-based dm, which refers to the queue
	 * settings.
	 * Until the flag set, bios are passed to bio-based dm and queued to
	 * md->deferred where queue settings are not needed yet.
	 * Those bios are passed to request-based dm at the resume time.
	 */
	FUNC10();
	if (FUNC4(t))
		FUNC9(QUEUE_FLAG_STACKABLE, q);
}