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
struct aer_rpc {size_t prod_idx; size_t cons_idx; int /*<<< orphan*/  e_lock; struct aer_err_source* e_sources; } ;
struct aer_err_source {int dummy; } ;

/* Variables and functions */
 size_t AER_ERROR_SOURCES_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC2(struct aer_rpc *rpc, struct aer_err_source *e_src)
{
	unsigned long flags;

	/* Lock access to Root error producer/consumer index */
	FUNC0(&rpc->e_lock, flags);
	if (rpc->prod_idx == rpc->cons_idx) {
		FUNC1(&rpc->e_lock, flags);
		return 0;
	}

	*e_src = rpc->e_sources[rpc->cons_idx];
	rpc->cons_idx++;
	if (rpc->cons_idx == AER_ERROR_SOURCES_MAX)
		rpc->cons_idx = 0;
	FUNC1(&rpc->e_lock, flags);

	return 1;
}