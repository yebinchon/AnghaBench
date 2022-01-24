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
struct TYPE_2__ {scalar_t__ last_guard_val; scalar_t__ ctx_sw_seen; } ;

/* Variables and functions */
 int ESCAPE_CODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int SKIP_GENERIC_SYNC ; 
 int SPU_PROFILING_CODE ; 
 int SYNC_START_ERROR ; 
 int /*<<< orphan*/  buffer_lock ; 
 int num_spu_nodes ; 
 int FUNC1 () ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  spu_active ; 
 TYPE_1__* spu_buff ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int spu_prof_num_nodes ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  spu_work ; 
 int /*<<< orphan*/  wq_sync_spu_buff ; 

int FUNC8(void)
{
	int spu;
	int ret = SKIP_GENERIC_SYNC;
	int register_ret;
	unsigned long flags = 0;

	spu_prof_num_nodes = FUNC1();
	num_spu_nodes = spu_prof_num_nodes * 8;
	FUNC0(&spu_work, wq_sync_spu_buff);

	/* create buffer for storing the SPU data to put in
	 * the kernel buffer.
	 */
	ret = FUNC2();
	if (ret)
		goto out;

	FUNC4(&buffer_lock, flags);
	for (spu = 0; spu < num_spu_nodes; spu++) {
		FUNC6(ESCAPE_CODE, spu);
		FUNC6(SPU_PROFILING_CODE, spu);
		FUNC6(num_spu_nodes, spu);
	}
	FUNC5(&buffer_lock, flags);

	for (spu = 0; spu < num_spu_nodes; spu++) {
		spu_buff[spu].ctx_sw_seen = 0;
		spu_buff[spu].last_guard_val = 0;
	}

	/* Register for SPU events  */
	register_ret = FUNC7(&spu_active);
	if (register_ret) {
		ret = SYNC_START_ERROR;
		goto out;
	}

	FUNC3("spu_sync_start -- running.\n");
out:
	return ret;
}