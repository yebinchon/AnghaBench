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
struct TYPE_2__ {int /*<<< orphan*/  count; } ;
struct zfcp_qdio {unsigned long long req_q_time; int req_q_util; int /*<<< orphan*/  stat_lock; TYPE_1__ req_q; } ;

/* Variables and functions */
 int QDIO_MAX_BUFFERS_PER_Q ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned long long FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC4(struct zfcp_qdio *qdio)
{
	unsigned long long now, span;
	int free, used;

	FUNC2(&qdio->stat_lock);
	now = FUNC1();
	span = (now - qdio->req_q_time) >> 12;
	free = FUNC0(&qdio->req_q.count);
	used = QDIO_MAX_BUFFERS_PER_Q - free;
	qdio->req_q_util += used * span;
	qdio->req_q_time = now;
	FUNC3(&qdio->stat_lock);
}