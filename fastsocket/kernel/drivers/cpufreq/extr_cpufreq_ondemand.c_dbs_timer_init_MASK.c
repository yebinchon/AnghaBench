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
struct cpu_dbs_info_s {int /*<<< orphan*/  work; int /*<<< orphan*/  cpu; int /*<<< orphan*/  sample_type; } ;
struct TYPE_2__ {int /*<<< orphan*/  sampling_rate; } ;

/* Variables and functions */
 int /*<<< orphan*/  DBS_NORMAL_SAMPLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__ dbs_tuners_ins ; 
 int /*<<< orphan*/  do_dbs_timer ; 
 int jiffies ; 
 int /*<<< orphan*/  kondemand_wq ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(struct cpu_dbs_info_s *dbs_info)
{
	/* We want all CPUs to do sampling nearly on same jiffy */
	int delay = FUNC2(dbs_tuners_ins.sampling_rate);
	delay -= jiffies % delay;

	dbs_info->sample_type = DBS_NORMAL_SAMPLE;
	FUNC0(&dbs_info->work, do_dbs_timer);
	FUNC1(dbs_info->cpu, kondemand_wq, &dbs_info->work,
		delay);
}