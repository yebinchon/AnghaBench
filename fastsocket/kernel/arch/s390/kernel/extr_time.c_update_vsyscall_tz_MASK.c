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
struct TYPE_4__ {int /*<<< orphan*/  tz_dsttime; int /*<<< orphan*/  tz_minuteswest; } ;
struct TYPE_3__ {int /*<<< orphan*/  tb_update_count; int /*<<< orphan*/  tz_dsttime; int /*<<< orphan*/  tz_minuteswest; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_2__ sys_tz ; 
 TYPE_1__* vdso_data ; 

void FUNC1(void)
{
	/* Make userspace gettimeofday spin until we're done. */
	++vdso_data->tb_update_count;
	FUNC0();
	vdso_data->tz_minuteswest = sys_tz.tz_minuteswest;
	vdso_data->tz_dsttime = sys_tz.tz_dsttime;
	FUNC0();
	++vdso_data->tb_update_count;
}