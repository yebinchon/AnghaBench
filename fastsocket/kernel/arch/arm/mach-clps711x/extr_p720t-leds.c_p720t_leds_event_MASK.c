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
typedef  int u32 ;
typedef  int led_event_t ;

/* Variables and functions */
 int /*<<< orphan*/  PDDR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
#define  led_idle_end 130 
#define  led_idle_start 129 
#define  led_timer 128 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 

__attribute__((used)) static void FUNC4(led_event_t ledevt)
{
	unsigned long flags;
	u32 pddr;

	FUNC3(flags);
	switch(ledevt) {
	case led_idle_start:
		break;

	case led_idle_end:
		break;

	case led_timer:
		pddr = FUNC0(PDDR);
		FUNC1(pddr ^ 1, PDDR);
		break;

	default:
		break;
	}

	FUNC2(flags);
}