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
struct rtc_time {int dummy; } ;
struct marvel_rtc_time {int retval; struct rtc_time* time; } ;

/* Variables and functions */
 int FUNC0 (struct rtc_time*) ; 
 scalar_t__ boot_cpuid ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,struct marvel_rtc_time*,int) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  smp_set_rtc_time ; 

__attribute__((used)) static int
FUNC3(struct rtc_time *time)
{
#ifdef CONFIG_SMP
	struct marvel_rtc_time mrt;

	if (smp_processor_id() != boot_cpuid) {
		mrt.time = time;
		smp_call_function_single(boot_cpuid, smp_set_rtc_time, &mrt, 1);
		return mrt.retval;
	}
#endif
	return FUNC0(time);
}