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
typedef  int u64 ;
typedef  int u32 ;
struct timespec {int tv_sec; scalar_t__ tv_nsec; } ;
struct pvclock_wall_clock {int version; int sec; scalar_t__ nsec; } ;
struct pvclock_vcpu_time_info {int dummy; } ;

/* Variables and functions */
 scalar_t__ NSEC_PER_SEC ; 
 scalar_t__ FUNC0 (int,scalar_t__) ; 
 int FUNC1 (struct pvclock_vcpu_time_info*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct timespec*,int,scalar_t__) ; 

void FUNC4(struct pvclock_wall_clock *wall_clock,
			    struct pvclock_vcpu_time_info *vcpu_time,
			    struct timespec *ts)
{
	u32 version;
	u64 delta;
	struct timespec now;

	/* get wallclock at system boot */
	do {
		version = wall_clock->version;
		FUNC2();		/* fetch version before time */
		now.tv_sec  = wall_clock->sec;
		now.tv_nsec = wall_clock->nsec;
		FUNC2();		/* fetch time before checking version */
	} while ((wall_clock->version & 1) || (version != wall_clock->version));

	delta = FUNC1(vcpu_time);	/* time since system boot */
	delta += now.tv_sec * (u64)NSEC_PER_SEC + now.tv_nsec;

	now.tv_nsec = FUNC0(delta, NSEC_PER_SEC);
	now.tv_sec = delta;

	FUNC3(ts, now.tv_sec, now.tv_nsec);
}