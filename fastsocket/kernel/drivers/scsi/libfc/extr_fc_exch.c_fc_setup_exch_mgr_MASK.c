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
struct fc_exch {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  SLAB_HWCACHE_ALIGN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int fc_cpu_mask ; 
 scalar_t__ fc_cpu_order ; 
 int /*<<< orphan*/  fc_em_cachep ; 
 int /*<<< orphan*/  fc_exch_workqueue ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int nr_cpu_ids ; 

int FUNC3(void)
{
	fc_em_cachep = FUNC1("libfc_em", sizeof(struct fc_exch),
					 0, SLAB_HWCACHE_ALIGN, NULL);
	if (!fc_em_cachep)
		return -ENOMEM;

	/*
	 * Initialize fc_cpu_mask and fc_cpu_order. The
	 * fc_cpu_mask is set for nr_cpu_ids rounded up
	 * to order of 2's * power and order is stored
	 * in fc_cpu_order as this is later required in
	 * mapping between an exch id and exch array index
	 * in per cpu exch pool.
	 *
	 * This round up is required to align fc_cpu_mask
	 * to exchange id's lower bits such that all incoming
	 * frames of an exchange gets delivered to the same
	 * cpu on which exchange originated by simple bitwise
	 * AND operation between fc_cpu_mask and exchange id.
	 */
	fc_cpu_mask = 1;
	fc_cpu_order = 0;
	while (fc_cpu_mask < nr_cpu_ids) {
		fc_cpu_mask <<= 1;
		fc_cpu_order++;
	}
	fc_cpu_mask--;

	fc_exch_workqueue = FUNC0("fc_exch_workqueue");
	if (!fc_exch_workqueue)
		goto err;
	return 0;
err:
	FUNC2(fc_em_cachep);
	return -ENOMEM;
}