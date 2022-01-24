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

/* Variables and functions */
 unsigned long CLOCK_EVT_NOTIFY_BROADCAST_OFF ; 
 unsigned long CLOCK_EVT_NOTIFY_BROADCAST_ON ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,int*) ; 
 int FUNC1 () ; 

__attribute__((used)) static void FUNC2(void *arg)
{
	unsigned long reason = (unsigned long)arg;
	int cpu = FUNC1();

	reason = reason ?
		CLOCK_EVT_NOTIFY_BROADCAST_ON : CLOCK_EVT_NOTIFY_BROADCAST_OFF;

	FUNC0(reason, &cpu);
}