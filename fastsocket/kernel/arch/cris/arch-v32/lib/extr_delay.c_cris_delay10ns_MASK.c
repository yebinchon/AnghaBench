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
typedef  scalar_t__ u32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  r_time ; 
 int /*<<< orphan*/  regi_timer0 ; 
 int /*<<< orphan*/  timer ; 

void FUNC1(u32 n10ns)
{
	u32 t0 = FUNC0(timer, regi_timer0, r_time);
	while (FUNC0(timer, regi_timer0, r_time) - t0 < n10ns)
		;
}