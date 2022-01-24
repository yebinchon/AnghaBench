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
struct cfq_group {unsigned int* busy_queues_avg; } ;
struct cfq_data {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (int,struct cfq_data*,struct cfq_group*) ; 
 int cfq_hist_divisor ; 
 unsigned int FUNC1 (unsigned int,unsigned int) ; 
 unsigned int FUNC2 (unsigned int,unsigned int) ; 

__attribute__((used)) static inline unsigned FUNC3(struct cfq_data *cfqd,
					struct cfq_group *cfqg, bool rt)
{
	unsigned min_q, max_q;
	unsigned mult  = cfq_hist_divisor - 1;
	unsigned round = cfq_hist_divisor / 2;
	unsigned busy = FUNC0(rt, cfqd, cfqg);

	min_q = FUNC2(cfqg->busy_queues_avg[rt], busy);
	max_q = FUNC1(cfqg->busy_queues_avg[rt], busy);
	cfqg->busy_queues_avg[rt] = (mult * max_q + min_q + round) /
		cfq_hist_divisor;
	return cfqg->busy_queues_avg[rt];
}