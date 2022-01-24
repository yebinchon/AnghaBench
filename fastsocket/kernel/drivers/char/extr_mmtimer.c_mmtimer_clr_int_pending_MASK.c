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
typedef  int /*<<< orphan*/  u64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SH_EVENT_OCCURRED_ALIAS ; 
 int SH_EVENT_OCCURRED_RTC1_INT_MASK ; 

__attribute__((used)) static void FUNC2(int comparator)
{
	FUNC0((u64 *)FUNC1(SH_EVENT_OCCURRED_ALIAS),
		SH_EVENT_OCCURRED_RTC1_INT_MASK << comparator);
}