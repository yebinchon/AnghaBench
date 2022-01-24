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
struct salinfo_data {scalar_t__ state; int /*<<< orphan*/  cpu_event; scalar_t__ log_buffer; scalar_t__ saved_num; } ;
struct TYPE_2__ {scalar_t__ severity; } ;
typedef  TYPE_1__ sal_log_record_header_t ;

/* Variables and functions */
 scalar_t__ STATE_LOG_RECORD ; 
 scalar_t__ STATE_NO_DATA ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,struct salinfo_data*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  data_saved_lock ; 
 scalar_t__ sal_log_severity_corrected ; 
 int /*<<< orphan*/  salinfo_log_clear_cpu ; 
 int /*<<< orphan*/  FUNC4 (int,struct salinfo_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct salinfo_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct salinfo_data*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int
FUNC9(struct salinfo_data *data, int cpu)
{
	sal_log_record_header_t *rh;
	unsigned long flags;
	FUNC7(&data_saved_lock, flags);
	data->state = STATE_NO_DATA;
	if (!FUNC2(cpu, data->cpu_event)) {
		FUNC8(&data_saved_lock, flags);
		return 0;
	}
	FUNC1(cpu, data->cpu_event);
	if (data->saved_num) {
		FUNC6(data, data->saved_num - 1);
		data->saved_num = 0;
	}
	FUNC8(&data_saved_lock, flags);
	rh = (sal_log_record_header_t *)(data->log_buffer);
	/* Corrected errors have already been cleared from SAL */
	if (rh->severity != sal_log_severity_corrected)
		FUNC0(cpu, salinfo_log_clear_cpu, data);
	/* clearing a record may make a new record visible */
	FUNC4(cpu, data);
	if (data->state == STATE_LOG_RECORD) {
		FUNC7(&data_saved_lock, flags);
		FUNC3(cpu, data->cpu_event);
		FUNC5(data);
		FUNC8(&data_saved_lock, flags);
	}
	return 0;
}