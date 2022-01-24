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
typedef  scalar_t__ u64 ;
struct pvclock_shadow_time {int /*<<< orphan*/  tsc_shift; int /*<<< orphan*/  tsc_to_nsec_mul; scalar_t__ tsc_timestamp; } ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u64 FUNC2(struct pvclock_shadow_time *shadow)
{
	u64 delta = FUNC0() - shadow->tsc_timestamp;
	return FUNC1(delta, shadow->tsc_to_nsec_mul,
				   shadow->tsc_shift);
}