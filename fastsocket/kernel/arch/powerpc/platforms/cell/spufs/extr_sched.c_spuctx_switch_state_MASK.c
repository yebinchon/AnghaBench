#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct timespec {int dummy; } ;
struct TYPE_4__ {unsigned long long tstamp; int util_state; long long* times; } ;
struct spu_context {TYPE_1__ stats; struct spu* spu; int /*<<< orphan*/  state_mutex; } ;
struct TYPE_5__ {long long* times; int util_state; unsigned long long tstamp; } ;
struct spu {int node; TYPE_2__ stats; } ;
typedef  enum spu_utilization_state { ____Placeholder_spu_utilization_state } spu_utilization_state ;
struct TYPE_6__ {int /*<<< orphan*/  busy_spus; } ;

/* Variables and functions */
 int SPU_UTIL_USER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_3__* cbe_spu_info ; 
 int /*<<< orphan*/  FUNC3 (struct timespec*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 unsigned long long FUNC5 (struct timespec*) ; 

void FUNC6(struct spu_context *ctx,
		enum spu_utilization_state new_state)
{
	unsigned long long curtime;
	signed long long delta;
	struct timespec ts;
	struct spu *spu;
	enum spu_utilization_state old_state;
	int node;

	FUNC3(&ts);
	curtime = FUNC5(&ts);
	delta = curtime - ctx->stats.tstamp;

	FUNC0(!FUNC4(&ctx->state_mutex));
	FUNC0(delta < 0);

	spu = ctx->spu;
	old_state = ctx->stats.util_state;
	ctx->stats.util_state = new_state;
	ctx->stats.tstamp = curtime;

	/*
	 * Update the physical SPU utilization statistics.
	 */
	if (spu) {
		ctx->stats.times[old_state] += delta;
		spu->stats.times[old_state] += delta;
		spu->stats.util_state = new_state;
		spu->stats.tstamp = curtime;
		node = spu->node;
		if (old_state == SPU_UTIL_USER)
			FUNC1(&cbe_spu_info[node].busy_spus);
		if (new_state == SPU_UTIL_USER)
			FUNC2(&cbe_spu_info[node].busy_spus);
	}
}