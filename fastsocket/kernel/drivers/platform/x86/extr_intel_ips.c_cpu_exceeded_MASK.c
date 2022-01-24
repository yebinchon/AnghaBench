#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ips_driver {int ctv2_avg_temp; int ctv1_avg_temp; int cpu_avg_power; int core_power_limit; TYPE_2__* dev; int /*<<< orphan*/  turbo_status_lock; TYPE_1__* limits; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int core_temp_limit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static bool FUNC3(struct ips_driver *ips, int cpu)
{
	unsigned long flags;
	int avg;
	bool ret = false;

	FUNC1(&ips->turbo_status_lock, flags);
	avg = cpu ? ips->ctv2_avg_temp : ips->ctv1_avg_temp;
	if (avg > (ips->limits->core_temp_limit * 100))
		ret = true;
	if (ips->cpu_avg_power > ips->core_power_limit * 100)
		ret = true;
	FUNC2(&ips->turbo_status_lock, flags);

	if (ret)
		FUNC0(&ips->dev->dev,
			 "CPU power or thermal limit exceeded\n");

	return ret;
}