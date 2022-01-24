#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ expires; } ;

/* Variables and functions */
 scalar_t__ SALINFO_TIMER_DELAY ; 
 scalar_t__ SAL_INFO_TYPE_INIT ; 
 scalar_t__ SAL_INFO_TYPE_MCA ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ jiffies ; 
 scalar_t__ salinfo_data ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 TYPE_1__ salinfo_timer ; 

__attribute__((used)) static void
FUNC3 (unsigned long arg)
{
	FUNC1();
	FUNC2(salinfo_data + SAL_INFO_TYPE_MCA);
	FUNC2(salinfo_data + SAL_INFO_TYPE_INIT);
	salinfo_timer.expires = jiffies + SALINFO_TIMER_DELAY;
	FUNC0(&salinfo_timer);
}