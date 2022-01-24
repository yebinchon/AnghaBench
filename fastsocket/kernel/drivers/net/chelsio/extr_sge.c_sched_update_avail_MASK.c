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
struct sge {struct sched* tx_sched; } ;
struct sched_port {long long drain_bits_per_1024ns; scalar_t__ avail; } ;
struct sched {int /*<<< orphan*/  last_updated; int /*<<< orphan*/  max_avail; struct sched_port* p; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 unsigned int MAX_NPORTS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 long long FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,long long) ; 

__attribute__((used)) static inline int FUNC5(struct sge *sge)
{
	struct sched *s = sge->tx_sched;
	ktime_t now = FUNC0();
	unsigned int i;
	long long delta_time_ns;

	delta_time_ns = FUNC2(FUNC1(now, s->last_updated));

	FUNC4("sched_update_avail delta=%lld\n", delta_time_ns);
	if (delta_time_ns < 15000)
		return 0;

	for (i = 0; i < MAX_NPORTS; i++) {
		struct sched_port *p = &s->p[i];
		unsigned int delta_avail;

		delta_avail = (p->drain_bits_per_1024ns * delta_time_ns) >> 13;
		p->avail = FUNC3(p->avail + delta_avail, s->max_avail);
	}

	s->last_updated = now;

	return 1;
}