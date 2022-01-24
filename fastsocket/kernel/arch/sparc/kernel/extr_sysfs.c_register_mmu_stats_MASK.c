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
struct sys_device {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  attr_mmustat_enable ; 
 int /*<<< orphan*/  mmu_stat_group ; 
 int /*<<< orphan*/  mmu_stats_supported ; 
 int /*<<< orphan*/  FUNC0 (struct sys_device*,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct sys_device *s)
{
	if (!mmu_stats_supported)
		return 0;
	FUNC0(s, &attr_mmustat_enable);
	return FUNC1(&s->kobj, &mmu_stat_group);
}