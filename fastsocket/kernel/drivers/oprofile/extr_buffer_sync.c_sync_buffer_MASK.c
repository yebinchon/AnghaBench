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
typedef  scalar_t__ sync_buffer_state ;
struct task_struct {int dummy; } ;
struct op_sample {unsigned long event; int /*<<< orphan*/  eip; } ;
struct op_entry {int dummy; } ;
struct mm_struct {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  bt_lost_no_mapping; } ;

/* Variables and functions */
 unsigned long IS_KERNEL ; 
 unsigned long KERNEL_CTX_SWITCH ; 
 unsigned long TRACE_BEGIN ; 
 unsigned long USER_CTX_SWITCH ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct op_entry*,struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 scalar_t__ FUNC3 (struct mm_struct*,struct op_sample*,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct task_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  buffer_mutex ; 
 unsigned long FUNC7 (struct mm_struct*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC12 (int) ; 
 scalar_t__ FUNC13 (struct op_entry*,unsigned long*) ; 
 scalar_t__ FUNC14 (struct op_entry*) ; 
 struct op_sample* FUNC15 (struct op_entry*,int) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 TYPE_1__ oprofile_stats ; 
 int /*<<< orphan*/  FUNC17 (struct mm_struct*) ; 
 scalar_t__ sb_bt_ignore ; 
 scalar_t__ sb_bt_start ; 
 scalar_t__ sb_buffer_start ; 
 scalar_t__ sb_sample_start ; 
 struct mm_struct* FUNC18 (struct task_struct*) ; 

void FUNC19(int cpu)
{
	struct mm_struct *mm = NULL;
	struct mm_struct *oldmm;
	unsigned long val;
	struct task_struct *new;
	unsigned long cookie = 0;
	int in_kernel = 1;
	sync_buffer_state state = sb_buffer_start;
	unsigned int i;
	unsigned long available;
	unsigned long flags;
	struct op_entry entry;
	struct op_sample *sample;

	FUNC10(&buffer_mutex);

	FUNC0(cpu);

	FUNC16(cpu);
	available = FUNC12(cpu);

	for (i = 0; i < available; ++i) {
		sample = FUNC15(&entry, cpu);
		if (!sample)
			break;

		if (FUNC8(sample->eip)) {
			flags = sample->event;
			if (flags & TRACE_BEGIN) {
				state = sb_bt_start;
				FUNC4();
			}
			if (flags & KERNEL_CTX_SWITCH) {
				/* kernel/userspace switch */
				in_kernel = flags & IS_KERNEL;
				if (state == sb_buffer_start)
					state = sb_sample_start;
				FUNC2(flags & IS_KERNEL);
			}
			if (flags & USER_CTX_SWITCH
			    && FUNC13(&entry, &val)) {
				/* userspace context switch */
				new = (struct task_struct *)val;
				oldmm = mm;
				FUNC17(oldmm);
				mm = FUNC18(new);
				if (mm != oldmm)
					cookie = FUNC7(mm);
				FUNC5(new, cookie);
			}
			if (FUNC14(&entry))
				FUNC1(&entry, mm);
			continue;
		}

		if (state < sb_bt_start)
			/* ignore sample */
			continue;

		if (FUNC3(mm, sample, in_kernel))
			continue;

		/* ignore backtraces if failed to add a sample */
		if (state == sb_bt_start) {
			state = sb_bt_ignore;
			FUNC6(&oprofile_stats.bt_lost_no_mapping);
		}
	}
	FUNC17(mm);

	FUNC9(cpu);

	FUNC11(&buffer_mutex);
}