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
struct cpu_dbs_info_s {int enable; int /*<<< orphan*/  work; int /*<<< orphan*/  cpu; } ;
struct TYPE_2__ {int /*<<< orphan*/  sampling_rate; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__ dbs_tuners_ins ; 
 int /*<<< orphan*/  do_dbs_timer ; 
 int jiffies ; 
 int /*<<< orphan*/  kconservative_wq ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(struct cpu_dbs_info_s *dbs_info)
{
	/* We want all CPUs to do sampling nearly on same jiffy */
	int delay = FUNC2(dbs_tuners_ins.sampling_rate);
	delay -= jiffies % delay;

	dbs_info->enable = 1;
	FUNC0(&dbs_info->work, do_dbs_timer);
	FUNC1(dbs_info->cpu, kconservative_wq, &dbs_info->work,
				delay);
}